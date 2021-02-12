from django.shortcuts import render
from datetime import datetime
from django.contrib.auth.hashers import make_password
from django.contrib.auth.decorators import login_required
from centro_medico.models import Centro_medico
from medico.models import Medico
from gestionPacientes.models import Usuarios

# Create your views here.
#registro medico
@login_required(login_url="login")
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
            birth_date = None#request.POST['birth_date'] if request.POST['birth_date'].strip() != '' else None
            start_date = None#request.POST['start_date']
            centroM = request.POST['Medic_center_name']

            acronimo = str(Centro_medico.objects.filter(name=centroM)[0].acronym) + '{0:04d}'.format(len(Medico.objects.all()) + 1) + 'M'

            #print(acronimo)
            for c in Centro_medico.objects.all():
                if(centroM == c.name):
                    centro=c

            format_str = '%d/%m/%Y'
            if birth_date is None:
                #print('birth none')
                birth_date = "01/01/1950"
            #print('####### ', birth_date)
            birth_date = datetime.strptime(birth_date, format_str)

            if start_date is None:
                start_date = datetime.now().date()
                start_date = str(start_date.day)+"/"+str(start_date.month)+"/"+str(start_date.year)

            start_date = datetime.strptime(str(start_date), format_str)


            if Medico.objects.filter(username = acronimo).count() > 0:
                return render(request,"registerM.html",{'centros': centros,'msg': "El médico " + acronimo + " ya existe"})

            if password1 and password2 and password1 != password2:
                return render(request, 'registerM.html', {'centros': centros,'msg': "Las contraseñas deben coincidir"})

            medico = Medico(
                password = make_password(password1),
                username = acronimo,
                first_name =first_name ,
                last_name = last_name,
                email = email,
                medical_center = centro,
                board_number = board_number,
                #user_id = acronimo

            )
            medico.save()
            usuario = Usuarios(
                id=medico.username,
                name= first_name ,
                address=request.POST['address'],
                city=request.POST['city'],
                date=birth_date,
                dni=request.POST['dni'],
                email=medico.email,
                nivel=6,
                password=medico.password,
                phone=request.POST['number'],
                sex=None, #request.POST['sex'],
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
        return render(request, 'registerM.html', { 'centros': centros,'msg': e})