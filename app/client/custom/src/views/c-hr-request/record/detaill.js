define('custom:views/c-hr-request/record/detaill', [
    'views/record/detail',
    'custom:c-hr-request/print-helper',
], function (Dep, PrintHelper) {

    return Dep.extend({

        actionPrintPdf: function () {
            var url = PrintHelper.getPrintUrl(this.model, this.getUser());

            if (url) {
                window.open(url, '_blank');

                return;
            }

            // No auto-template rule for this user/request-type — fall back to the
            // standard "Print to PDF" template-selection modal.
            return Dep.prototype.actionPrintPdf.call(this);
        },
    });
});