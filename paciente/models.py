from django.db import models

from centro_medico.models import Centro_medico
from users.models import User


# Create your models here.
class Tratamiento(models.Model):
    code = models.CharField(max_length=250)
    name = models.CharField(max_length=250)

    def __str__(self):
        return self.code

    class Meta:
        db_table = 'tratamiento'


class Paciente(User):
    TYPES = (
        ('Tipo1', 'Diabetes de tipo 1'),
        ('Tipo2', 'Diabetes de tipo 2'),
        ('Otro', 'Diabetes de otro tipo')
    )
    birth_date = models.DateField()
    diabetes_type = models.CharField(max_length=10, choices=TYPES)
    treatment = models.ForeignKey(Tratamiento, on_delete=models.PROTECT, null=True)
    start_date = models.DateField(null=True, blank=True)
    medical_center = models.ForeignKey(Centro_medico, on_delete=models.PROTECT)
    first_date = models.DateTimeField(null=True, blank=True, help_text="Primera fecha con datos del paciente")
    last_date = models.DateTimeField(null=True, blank=True, help_text="Ultima fecha con datos del paciente")

    def __str__(self):
        return self.username

    class Meta:
        db_table = 'paciente'


class Calorias(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    calories = models.FloatField(max_length=250)

    class Meta:
        db_table = 'calorias'
        unique_together = (('id_user', 'time'),)


class Ritmo_cardiaco(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    heart_rate = models.FloatField(max_length=250)

    class Meta:
        db_table = 'ritmo_cardiaco'
        unique_together = (('id_user', 'time'),)


class Pasos(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    steps = models.FloatField(max_length=250)

    class Meta:
        db_table = 'pasos'
        unique_together = (('id_user', 'time'),)


class Suenio(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    sleep_state = models.CharField(max_length=250)

    # sleep_duration = models.FloatField(max_length=250)

    class Meta:
        db_table = 'suenio'
        unique_together = (('id_user', 'time'),)


class Siesta(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    nap_state = models.CharField(max_length=250)

    # nap_duration = models.FloatField(max_length=250)

    class Meta:
        db_table = 'siesta'
        unique_together = (('id_user', 'time'),)


class Siesta_resumen(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    nap_main_sleep = models.BooleanField()
    nap_efficiency = models.FloatField(max_length=250)
    nap_duration = models.FloatField(max_length=250)
    nap_minutes_asleep = models.FloatField(max_length=250)
    nap_minutes_light = models.FloatField(max_length=250)
    nap_minutes_deep = models.FloatField(max_length=250)
    nap_minutes_rem = models.FloatField(max_length=250)
    nap_minutes_awake = models.FloatField(max_length=250)
    nap_minutes_in_bed = models.FloatField(max_length=250)
    nap_minutes_restless = models.FloatField(max_length=250)

    class Meta:
        db_table = 'siesta_resumen'
        unique_together = (('id_user', 'time'),)


class Suenio_resumen(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    sleep_main_sleep = models.BooleanField()
    sleep_efficiency = models.FloatField(max_length=250)
    sleep_duration = models.FloatField(max_length=250)
    sleep_minutes_asleep = models.FloatField(max_length=250)
    sleep_minutes_light = models.FloatField(max_length=250)
    sleep_minutes_deep = models.FloatField(max_length=250)
    sleep_minutes_rem = models.FloatField(max_length=250)
    sleep_minutes_awake = models.FloatField(max_length=250)
    sleep_minutes_in_bed = models.FloatField(max_length=250)

    class Meta:
        db_table = 'suenio_resumen'
        unique_together = (('id_user', 'time'),)


# MEDTRONIC

class Basal_rate(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    basal_rate_U_h = models.FloatField(max_length=250)

    class Meta:
        db_table = 'basal_rate'
        unique_together = (('id_user', 'time'),)


class Bolus_type(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    bolus_type = models.CharField(max_length=250)

    class Meta:
        db_table = 'bolus_type'
        unique_together = (('id_user', 'time'),)


class Bolus_volume_delivered(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    bolus_volume_delivered_U = models.FloatField(max_length=250)

    class Meta:
        db_table = 'bolus_volume_delivered'
        unique_together = (('id_user', 'time'),)


class Carb_ratio(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    carb_ratio_U_EX = models.FloatField(max_length=250)

    class Meta:
        db_table = 'carb_ratio'
        unique_together = (('id_user', 'time'),)


class Carb_input(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    carb_input_EX = models.FloatField(max_length=250)

    class Meta:
        db_table = 'carb_input'
        unique_together = (('id_user', 'time'),)


class Glucosa_medtronic(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    glucosa_medtronic_mg_dL = models.FloatField(max_length=250)

    class Meta:
        db_table = 'glucosa_medtronic'
        unique_together = (('id_user', 'time'),)


class Glucosa_freestyle(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    glucosa_freestyle_mg_dL = models.FloatField(max_length=250)

    class Meta:
        db_table = 'glucosa_freestyle'
        unique_together = (('id_user', 'time'),)


class Insulina_rapida(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    insulina_rapida_U = models.FloatField(max_length=250)

    class Meta:
        db_table = 'insulina_rapida'
        unique_together = (('id_user', 'time'),)


class Insulina_lenta(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    insulina_lenta_U = models.FloatField(max_length=250)

    class Meta:
        db_table = 'insulina_lenta'
        unique_together = (('id_user', 'time'),)


class Glucosa_sangre(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    glucosa_sangre_mg_dL = models.FloatField(max_length=250)

    class Meta:
        db_table = 'glucosa_sangre'
        unique_together = (('id_user', 'time'),)


class Cetonas(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    cetonas_mmol_L = models.FloatField(max_length=250)

    class Meta:
        db_table = 'cetonas'
        unique_together = (('id_user', 'time'),)


class Peso(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    peso = models.FloatField(max_length=250)

    class Meta:
        db_table = 'peso'
        unique_together = (('id_user', 'time'),)


class Hito_roche(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    hito_roche = models.CharField(max_length=250)

    class Meta:
        db_table = 'hito_roche'
        unique_together = (('id_user', 'time'),)


class Evento_insulina_rapida(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    evento_insulina_rapida = models.CharField(max_length=250)

    class Meta:
        db_table = 'evento_insulina_rapida'
        unique_together = (('id_user', 'time'),)


class Evento_insulina_lenta(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    evento_insulina_lenta = models.CharField(max_length=250)

    class Meta:
        db_table = 'evento_insulina_lenta'
        unique_together = (('id_user', 'time'),)


class Evento_carbohidratos(models.Model):
    id_user = models.ForeignKey(Paciente, on_delete=models.PROTECT)
    time = models.DateTimeField(null=False, blank=False)
    evento_carbohidratos = models.CharField(max_length=250)

    class Meta:
        db_table = 'evento_carbohidratos'
        unique_together = (('id_user', 'time'),)
