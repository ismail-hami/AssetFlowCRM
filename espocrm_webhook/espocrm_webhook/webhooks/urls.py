from django.urls import path
from . import views

urlpatterns = [
    path('espocrm-webhook/', views.espocrm_webhook, name='espocrm_webhook'),
]