# Generated by Django 3.1.1 on 2020-10-04 06:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('gestionPacientes', '0004_auto_20201004_0540'),
    ]

    operations = [
        migrations.AddField(
            model_name='medico',
            name='medical_ID',
            field=models.CharField(max_length=250, null=True),
        ),
    ]