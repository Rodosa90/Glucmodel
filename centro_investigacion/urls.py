from django.urls import path

from centro_investigacion.views import register

urlpatterns = [
    path('register/', register, name='register_ci')
]