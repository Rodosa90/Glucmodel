from django.db import models
from users.models import User
from centro_investigacion.models import Centro_investigacion


# Create your models here.
class Investigador(User):
    TYPES_INVEST = (
        ('Research', 'Investigador de busqueda'),
        ('Analisis', 'Investigador de analisis'),
        ('Otro', 'otro tipo de investigador')
    )
    Investigator_type = models.CharField(max_length=10, choices=TYPES_INVEST)
    investigation_center = models.ForeignKey(Centro_investigacion, on_delete=models.PROTECT)

    def __str__(self):
        return self.user_id

    class Meta:
        db_table = 'investigador'