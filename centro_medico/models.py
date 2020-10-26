from django.db import models

# Create your models here.
class Centro_medico(models.Model):
    name = models.CharField(max_length=250,blank=False,null=False,default="")
    acronym = models.CharField(max_length=10, blank=False, null=False,default="")
    #postal = models.IntegerField(max_length=250, blank = True, null=True)

    def __str__(self):  # método para imprimir un objeto y me saque automaticamente un string
        return self.name

    class Meta:
        db_table = 'centro_medico'