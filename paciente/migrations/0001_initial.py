# Generated by Django 3.1.2 on 2020-10-23 05:50

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Basal_rate',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('time', models.DateTimeField()),
                ('basal_rate_U_h', models.FloatField(max_length=250)),
            ],
            options={
                'db_table': 'basal_rate',
            },
        ),
        migrations.CreateModel(
            name='Bolus_type',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('time', models.DateTimeField()),
                ('bolus_type', models.CharField(max_length=250)),
            ],
            options={
                'db_table': 'bolus_type',
            },
        ),
        migrations.CreateModel(
            name='Bolus_volume_delivered',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('time', models.DateTimeField()),
                ('bolus_volume_delivered_U', models.FloatField(max_length=250)),
            ],
            options={
                'db_table': 'bolus_volume_delivered',
            },
        ),
        migrations.CreateModel(
            name='Calorias',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('time', models.DateTimeField()),
                ('calories', models.FloatField(max_length=250)),
            ],
            options={
                'db_table': 'calorias',
            },
        ),
        migrations.CreateModel(
            name='Carb_input',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('time', models.DateTimeField()),
                ('carb_input_EX', models.FloatField(max_length=250)),
            ],
            options={
                'db_table': 'carb_input',
            },
        ),
        migrations.CreateModel(
            name='Carb_ratio',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('time', models.DateTimeField()),
                ('carb_ratio_U_EX', models.FloatField(max_length=250)),
            ],
            options={
                'db_table': 'carb_ratio',
            },
        ),
        migrations.CreateModel(
            name='Cetonas',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('time', models.DateTimeField()),
                ('cetonas_mmol_L', models.FloatField(max_length=250)),
            ],
            options={
                'db_table': 'cetonas',
            },
        ),
        migrations.CreateModel(
            name='Evento_carbohidratos',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('time', models.DateTimeField()),
                ('evento_carbohidratos', models.CharField(max_length=250)),
            ],
            options={
                'db_table': 'evento_carbohidratos',
            },
        ),
        migrations.CreateModel(
            name='Evento_insulina_lenta',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('time', models.DateTimeField()),
                ('evento_insulina_lenta', models.CharField(max_length=250)),
            ],
            options={
                'db_table': 'evento_insulina_lenta',
            },
        ),
        migrations.CreateModel(
            name='Evento_insulina_rapida',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('time', models.DateTimeField()),
                ('evento_insulina_rapida', models.CharField(max_length=250)),
            ],
            options={
                'db_table': 'evento_insulina_rapida',
            },
        ),
        migrations.CreateModel(
            name='Glucosa_freestyle',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('time', models.DateTimeField()),
                ('glucosa_freestyle_mg_dL', models.FloatField(max_length=250)),
            ],
            options={
                'db_table': 'glucosa_freestyle',
            },
        ),
        migrations.CreateModel(
            name='Glucosa_medtronic',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('time', models.DateTimeField()),
                ('glucosa_medtronic_mg_dL', models.FloatField(max_length=250)),
            ],
            options={
                'db_table': 'glucosa_medtronic',
            },
        ),
        migrations.CreateModel(
            name='Glucosa_sangre',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('time', models.DateTimeField()),
                ('glucosa_sangre_mg_dL', models.FloatField(max_length=250)),
            ],
            options={
                'db_table': 'glucosa_sangre',
            },
        ),
        migrations.CreateModel(
            name='Hito_roche',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('time', models.DateTimeField()),
                ('hito_roche', models.CharField(max_length=250)),
            ],
            options={
                'db_table': 'hito_roche',
            },
        ),
        migrations.CreateModel(
            name='Insulina_lenta',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('time', models.DateTimeField()),
                ('insulina_lenta_U', models.FloatField(max_length=250)),
            ],
            options={
                'db_table': 'insulina_lenta',
            },
        ),
        migrations.CreateModel(
            name='Insulina_rapida',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('time', models.DateTimeField()),
                ('insulina_rapida_U', models.FloatField(max_length=250)),
            ],
            options={
                'db_table': 'insulina_rapida',
            },
        ),
    ]