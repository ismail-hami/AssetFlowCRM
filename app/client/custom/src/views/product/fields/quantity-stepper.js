define('custom:views/product/fields/quantity-stepper', ['views/fields/int'], function (Dep) {

    return Dep.extend({

        listTemplate: 'custom:product/fields/quantity-stepper/list',

        events: {
            'click [data-action="increaseQty"]': function (e) {
                e.stopPropagation();
                this.changeQuantity(1);
            },
            'click [data-action="decreaseQty"]': function (e) {
                e.stopPropagation();
                this.changeQuantity(-1);
            },
            'click [data-name="quantityInput"]': function (e) {
                e.stopPropagation();
            },
            'keydown [data-name="quantityInput"]': function (e) {
                e.stopPropagation();

                if (e.key === 'Enter') {
                    e.preventDefault();
                    this.$el.find('[data-name="quantityInput"]').trigger('blur');
                }
            },
            'blur [data-name="quantityInput"]': function (e) {
                this.submitTypedValue($(e.currentTarget).val());
            },
        },

        data: function () {
            var data = Dep.prototype.data.call(this);
            data.quantityValue = this.model.get(this.name);
            return data;
        },

        submitTypedValue: function (rawValue) {
            var parsed = parseInt(rawValue, 10);

            if (isNaN(parsed) || parsed < 0) {
                this.$el.find('[data-name="quantityInput"]').val(this.model.get(this.name));
                return;
            }

            var current = this.model.get(this.name) || 0;

            if (parsed === current) {
                return;
            }

            this.saveQuantity(parsed);
        },

        changeQuantity: function (delta) {
            var current = this.model.get(this.name) || 0;
            var newValue = current + delta;

            if (newValue < 0) {
                newValue = 0;
            }

            this.saveQuantity(newValue);
        },

        saveQuantity: function (newValue) {
            if (!this.getAcl().checkModel(this.model, 'edit')) {
                return;
            }

            this.disableButtons(true);

            Espo.Ajax.patchRequest('CProduct/' + this.model.id, {
                [this.name]: newValue
            }).then(function () {
                this.model.set(this.name, newValue);
                this.$el.find('[data-name="quantityInput"]').val(newValue);
                this.disableButtons(false);
            }.bind(this)).catch(function () {
                Espo.Ui.error('Could not update quantity');
                this.$el.find('[data-name="quantityInput"]').val(this.model.get(this.name));
                this.disableButtons(false);
            }.bind(this));
        },

        disableButtons: function (disabled) {
            this.$el.find('button').prop('disabled', disabled);
        },

    });
});