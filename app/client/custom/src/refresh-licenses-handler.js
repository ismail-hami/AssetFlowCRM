define('custom:refresh-licenses-handler', ['action-handler'], function (Dep) {

    return Dep.extend({

        refresh: function (data, e) {
            Espo.Ui.notify('Updating licenses...', 'info');

            Espo.Ajax.postRequest('Software/action/refreshLicenses', {})
                .done(function (response) {
                    if (response.success) {
                        Espo.Ui.success(response.message);
                        this.view.collection.fetch();
                    } else {
                        Espo.Ui.error(response.message);
                    }
                }.bind(this))
                .fail(function () {
                    Espo.Ui.error('Failed to update licenses!');
                });
        }
    });
});