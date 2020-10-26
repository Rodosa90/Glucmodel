# Generated by Django 3.1.2 on 2020-10-24 20:07

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('centro_medico', '0001_initial'),
        ('medico', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='medico',
            name='medical_center',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.PROTECT, to='centro_medico.centro_medico'),
            preserve_default=False,
        ),
    ]