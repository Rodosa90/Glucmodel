from django.contrib import admin
from paciente.models import Paciente, Tratamiento

# Register your models here.
admin.site.register(Paciente)
admin.site.register(Tratamiento)