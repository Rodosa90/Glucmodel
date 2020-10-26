# Generated by Django 3.1.2 on 2020-10-24 20:49

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('centro_medico', '0001_initial'),
        ('paciente', '0002_auto_20201023_0550'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='paciente',
            name='doctor_id',
        ),
        migrations.RemoveField(
            model_name='paciente',
            name='patient_ID',
        ),
        migrations.AddField(
            model_name='paciente',
            name='medical_center',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.PROTECT, to='centro_medico.centro_medico'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='paciente',
            name='diabetes_type',
            field=models.CharField(choices=[('Tipo1', 'Diabetes de tipo 1'), ('Tipo2', 'Diabetes de tipo 2'), ('Otro', 'Diabetes de otro tipo')], max_length=10),
        ),
    ]