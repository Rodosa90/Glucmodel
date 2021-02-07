from django.shortcuts import render
from datetime import datetime
from django.contrib.auth.hashers import make_password
from centro_medico.models import Centro_medico
from medico.models import Medico
from paciente.models import Paciente, Tratamiento
from gestionPacientes.models import Usuarios


# Create your views here.
def register(request):
    try:

        centros = Centro_medico.objects.all()
        tratamientos = Tratamiento.objects.all()

        if request.method == 'POST':
            password1 = request.POST['password1']
            password2 = request.POST['password2']
            email = request.POST['email'].strip() if request.POST['email'].strip() != '' else None #se quitan espacions en blanco en email
            first_name = request.POST['name']
            last_name = request.POST['surname1']
            birth_date = request.POST['birth_date']
            start_date = request.POST['start_date']
            centroM = request.POST['Medic_center_name']
            tratamiento = request.POST['treatment_id']
            tipo_diabetes = request.POST['type_in']
            hiper= request.POST['hiper']
            hipo= request.POST['hipo']

            #print(hipo)
            #print(hiper)

            acronimo = str(Centro_medico.objects.filter(name=centroM)[0].acronym) + '{0:04d}'.format(
                len(Paciente.objects.all()) + 1) + 'P'

            # print(acronimo)
            for c in Centro_medico.objects.all():
                if (centroM == c.name):
                    centro = c

            for treatment in Tratamiento.objects.all():
                if (tratamiento == treatment.name):
                    treat = treatment

            format_str = '%d/%m/%Y'
            if not birth_date:
                birth_date = "01/01/1950"
            birth_date = datetime.strptime(birth_date, format_str)

            if not start_date:
                start_date = datetime.now().date()
                start_date = str(start_date.day) + "/" + str(start_date.month) + "/" + str(start_date.year)

            start_date = datetime.strptime(str(start_date), format_str)

            if not hiper:
                hiper = 180

            if not hipo:
                hipo = 70
            #aqui se cambio email por uacronimo username=acronimo en vez de email
            if Paciente.objects.filter(username=acronimo).count() > 0:
                return render(request, "registerP.html",
                              {'centros': centros, 'msg': "El paciente " + acronimo + " ya existe"}) #aqui estaba email en vez de acronimo

            if password1 and password2 and password1 != password2:
                return render(request, 'registerP.html', {'centros': centros, 'msg': "Las contraseñas deben coincidir"})
            #print("mi errrorr:" ,email)
            paciente = Paciente(
                password=make_password(password1),
                username=acronimo,  # aqui se cambio email por acronimo username=acronimo en vez de email
                first_name=first_name,
                last_name=last_name,
                email=email,
                medical_center=centro,
                birth_date=birth_date,
                #user_id=acronimo,
                treatment=treat,
                diabetes_type=tipo_diabetes

            )
            paciente.save()
            usuario = Usuarios(
                id=paciente.username,
                name=first_name,
                address=request.POST['address'],
                city=request.POST['city'],
                date=birth_date,
                dni=request.POST['dni'],
                email=paciente.email,
                nivel=6,
                password=paciente.password,
                phone=request.POST['number'],
                sex=request.POST['sex'],
                surname1=request.POST['surname1'],
                surname2=request.POST['surname2'],
                hipergluc=hiper,
                hipogluc=hipo
            )
            usuario.save()

            """
            Deshabilitado envio correo 29-05-2020
            """
            # enviar_correo(email,password1)
            return render(request, 'registerP.html',
                          {'centros': centros, 'tratamientos': tratamientos, 'msg': "Paciente registrado con éxito",
                           "user_ID": "Tu userID es:" + acronimo})

        else:
            return render(request, 'registerP.html', {'centros': centros, 'tratamientos': tratamientos})
    except Exception as e:
        print(e)
        return render(request, 'registerP.html', {'centros': centros, 'tratamientos': tratamientos, 'msg': "Ha ocurrido un error"})
