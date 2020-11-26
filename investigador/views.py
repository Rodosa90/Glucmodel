from django.shortcuts import render
from datetime import datetime
from django.contrib.auth.hashers import make_password
from centro_investigacion.models import Centro_investigacion
from investigador.models import Investigador
from gestionPacientes.models import Usuarios


# Create your views here.
def register(request):
    print(request.POST)
    try:
        centros = Centro_investigacion.objects.all()
           # investigadores = Investigador.objects.all()
            #totalInvestigadores = investigadores.length()
            #string = request.POST['Medic_center_name']
            #words = string.split(' ')
            #character = ''
            #for word in words:
             #   character += word[0]
        if request.method == 'POST':
            #identificador = request.POST['identificador']
            password1 = request.POST['password1']
            password2 = request.POST['password2']
            email = request.POST['email']
            invest_type = request.POST['type_in']
            first_name = request.POST['name']
            last_name = request.POST['surname1']
            birth_date = request.POST['birth_date']
            start_date = request.POST['start_date']
            centroI = request.POST['Medic_center_name']

            acronimo = str(Centro_investigacion.objects.filter(name=centroI)[0].acronym) + '{0:04d}'.format(len(Investigador.objects.all()) + 1) + 'I'

            # print(acronimo)
            for c in Centro_investigacion.objects.all():
                if (centroI == c.name):
                    centro = c

            format_str = '%d/%m/%Y'
            if not birth_date:
                birth_date = "01/01/1950"
            birth_date = datetime.strptime(birth_date, format_str)

            if not start_date:
                start_date = datetime.now().date()
                start_date = str(start_date.day) + "/" + str(start_date.month) + "/" + str(start_date.year)

            start_date = datetime.strptime(str(start_date), format_str)

            if Investigador.objects.filter(username=email).count():
                return render(request, "registerI.html",
                              { 'centros': centros, 'msg': "El investigador " + email + " ya existe"})

            if password1 and password2 and password1 != password2:
                return render(request, 'registerI.html',
                              { 'centros': centros, 'msg': "Las contraseñas deben coincidir"})
                # aqui se crea al investigador lo que se guarda en la BD
            investigador = Investigador(
                password=make_password(password1),
                username=email,
                first_name=first_name,
                last_name=last_name,
                email=email,
                investigation_center=centro,
                Investigator_type=invest_type,
                user_id = acronimo
            )
            investigador.save()

            #investigador hereda de usuario
            usuario = Usuarios(
                id=investigador.user_id,
                name=investigador.first_name,
                address =request.POST['address'],
                city = request.POST['city'],
                date = birth_date,
                dni = request.POST['dni'],
                email =investigador.email,
                nivel = 6,
                password = investigador.password,
                phone = request.POST['number'],
                sex = request.POST['sex'],
                surname1 = request.POST['surname1'],
                surname2 = request.POST['surname2']
            )
            usuario.save()

            """
            Deshabilitado envio correo 29-05-2020
            """
            # enviar_correo(email,password1)
            return render(request, 'registerI.html',
                          {  'centros': centros, 'msg': "Usuario registrado con éxito" ,"user_ID": "Tu userID es:" + acronimo})

        else:
            return render(request, 'registerI.html', { 'centros': centros})
    except Exception as e:
        print(e)
        return render(request, 'registerI.html',
                      {'centros': centros, 'msg': "Ha ocurrido un error"})