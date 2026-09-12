define('custom:refresh-license-expiry-handler', ['action-handler'], function (Dep) {

    return Dep.extend({

        refresh: function (data, e) {
            Espo.Ui.notify('Updating licenses...', 'info');

            Espo.Ajax.postRequest('CLicenes/action/refreshExpiry', {})
                .done(function (response) {
                    if (response.success) {
                        Espo.Ui.success(response.message);
                        this.view.collection.fetch();
                    } else {
                        Espo.Ui.error(response.message || 'Failed to update licenses!');
                    }
                }.bind(this))
                .fail(function () {
                    Espo.Ui.error('Failed to update licenses!');
                });
        }
    });
});

