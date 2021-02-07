from django.db import models
from users.models import User
from centro_medico.models import Centro_medico

# Create your models here.
class Medico(User):
    board_number = models.CharField(max_length=250)
    medical_center = models.ForeignKey(Centro_medico, on_delete=models.PROTECT)

    def __str__(self):
        return self.username

    class Meta:
        db_table = 'medico'