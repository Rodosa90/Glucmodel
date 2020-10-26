from django.shortcuts import render
from datetime import datetime
from django.contrib.auth.hashers import make_password

from centro_medico.models import Centro_medico
from medico.models import Medico
from gestionPacientes.models import Usuarios

# Create your views here.
#registro medico
def register(request):
    try:

        centros= Centro_medico.objects.all()

        if request.method == 'POST':
            password1 = request.POST['password1']
            password2 = request.POST['password2']
            email = request.POST['email']
            board_number = request.POST['board_number']
            first_name  = request.POST['name']
            last_name = request.POST['surname1']
            birth_date = request.POST['birth_date']
            start_date = request.POST['start_date']
            centroM = request.POST['Medic_center_name']

            acronimo = str(Centro_medico.objects.filter(name=centroM)[0].acronym) + '{0:04d}'.format(len(Medico.objects.all()) + 1) + 'M'

            #print(acronimo)
            for c in Centro_medico.objects.all():
                if(centroM == c.name):
                    centro=c

            format_str = '%d/%m/%Y'
            birth_date = datetime.strptime(birth_date, format_str)
            start_date = datetime.strptime(start_date, format_str)


            if Medico.objects.filter(username = email).count():
                return render(request,"registerM.html",{'centros': centros,'msg': "El médico " + email + " ya existe"})

            if password1 and password2 and password1 != password2:
                return render(request, 'registerM.html', {'centros': centros,'msg': "Las contraseñas deben coincidir"})

            medico = Medico(
                password = make_password(password1),
                username = email,
                first_name =first_name ,
                last_name = last_name,
                email = email,
                medical_center = centro,
                board_number = board_number,
                user_id = acronimo

            )
            medico.save()
            usuario = Usuarios(
                id=medico.user_id,
                name= first_name ,
                address=request.POST['address'],
                city=request.POST['city'],
                date=birth_date,
                dni=request.POST['dni'],
                email=medico.email,
                nivel=6,
                password=medico.password,
                phone=request.POST['number'],
                sex=request.POST['sex'],
                surname1=request.POST['surname1'],
                surname2=request.POST['surname2']
            )
            usuario.save()


            """
            Deshabilitado envio correo 29-05-2020
            """
            #enviar_correo(email,password1)
            return render(request, 'registerM.html',
                          { 'centros': centros, 'msg': "Usuario registrado con éxito" , "user_ID": "Tu userID es:" + acronimo})

        else:
            return render(request,'registerM.html',{'centros': centros})
    except Exception as e:
        return render(request, 'registerM.html', { 'centros': centros,'msg': "Ha ocurrido un error"})