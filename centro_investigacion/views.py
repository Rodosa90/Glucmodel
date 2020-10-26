from django.shortcuts import render
from centro_investigacion.models import Centro_investigacion

# Create your views here.
# registro Centro Investigación
def register(request):
    try:
        centros = Centro_investigacion.objects.all()

        if request.method == 'POST':

            name = request.POST['investigatorcenter']
            acronym = request.POST['acronym']

            # aqui se crea al centro de investigación lo que se guarda en la BD
            centroinvestigacion = Centro_investigacion(
                name=name,
                acronym=acronym
            )
            centroinvestigacion.save()

            return render(request, 'registerCI.html',
                          {'centros': centros, 'msg': "Centro  de Investigación registrado con éxito"})

        else:
            return render(request, 'registerCI.html', {'centros': centros})
    except Exception as e:
        return render(request, 'registerCI.html',
                      {'centros': centros, 'msg': "Ha ocurrido un error"})