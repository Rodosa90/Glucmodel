from django.shortcuts import render
from centro_medico.models import Centro_medico
from django.contrib.auth.decorators import login_required


# Create your views here.
@login_required(login_url="login")
def register(request):
    try:
        centros = Centro_medico.objects.all()

        if request.method == 'POST':

            name = request.POST['medicalcenter']
            acronym = request.POST['acronym']

            # aqui se crea al centro  médico lo que se guarda en la BD
            centromedico = Centro_medico(
                name=name,
                acronym=acronym
            )
            centromedico.save()

            return render(request, 'registerCM.html',
                          {'centros': centros, 'msg': "Centro Médico registrado con éxito"})

        else:
            return render(request, 'registerCM.html', {'centros': centros})
    except Exception as e:
        return render(request, 'registerCM.html',
                      {'centros': centros, 'msg': "Ha ocurrido un error"})