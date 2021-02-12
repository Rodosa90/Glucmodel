"""config URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import include, path
from gestionPacientes import views
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.welcome),
    path('login/', views.login),
    path('logout/', views.logout),
    path('new_password/', views.new_password),
    #path('register/', views.register),
    path('investigador/', include('investigador.urls')),
    path('medico/', include('medico.urls')),
    path('paciente/', include('paciente.urls')),
    path('centro/medico/', include('centro_medico.urls')),
    path('centro/investigacion/', include('centro_investigacion.urls')),
    path('download/', views.download),
    path('upload/', views.upload),
    path('administracion/', views.administracion)

]
#se agregan los estilos al Panel de DJango con el import  de : from django.contrib.staticfiles.urls import staticfiles_urlpatterns
urlpatterns += staticfiles_urlpatterns()

