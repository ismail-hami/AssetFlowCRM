define('custom:handlers/c-hr-request/row-action-print', [
    'handlers/row-action',
    'custom:c-hr-request/print-helper',
    'views/modals/select-template',
], function (Dep, PrintHelper, SelectTemplateModal) {

    return class extends Dep {

        process(model, action) {
            var view = this.view;
            var user = view.getUser();

            var openPrint = function () {
                var url = PrintHelper.getPrintUrl(model, user);

                if (url) {
                    window.open(url, '_blank');

                    return;
                }

                // No auto-template rule for this user/request-type — let the user pick a
                // template manually, same as the standard "Print to PDF" action.
                var modalView = new SelectTemplateModal({
                    entityType: model.entityType,
                    onSelect: function (models) {
                        var templateModel = models[0];

                        var pdfUrl = '?entryPoint=pdf' +
                            '&entityType=' + model.entityType +
                            '&entityId=' + model.id +
                            '&templateId=' + templateModel.id;

                        window.open(pdfUrl, '_blank');
                    },
                });

                view.assignView('modal', modalView).then(function () {
                    modalView.render();
                });
            };

            if (!PrintHelper.needsFullModel(model, user)) {
                openPrint();

                return;
            }

            // The list-row model only carries the fields shown in the list layout;
            // fetch the full record to get the request sub-type field used to pick a template.
            Espo.Ui.notifyWait();

            model.fetch().then(function () {
                Espo.Ui.notify(false);
                openPrint();
            }).catch(function () {
                Espo.Ui.notify(false);
                Espo.Ui.error(view.translate('Error'));
            });
        }
    };
});