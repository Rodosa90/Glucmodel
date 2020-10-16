"""Glucmodel URL Configuration

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
from django.urls import path
from gestionPacientes import views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', views.welcome),
    path('login/', views.login),
    path('logout/', views.logout),
    path('new_password/', views.new_password),
    #path('register/', views.register),
    path('registerI/', views.registerI),
    path('registerM/', views.registerM),
    path('registerP/', views.registerP),
    path('registerCM/', views.registerCM),
    path('registerCI/', views.registerCI),
    path('download/', views.download),
    path('upload/', views.upload),
    path('administracion/', views.administracion)

]