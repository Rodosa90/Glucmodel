from django.db import models
from django.contrib.auth.models import AbstractUser


# Create your models here.
class User(AbstractUser):
    username = models.CharField(primary_key=True, max_length=250, null=False, unique=True)

    USERNAME_FIELD = 'username'
    #REQUIRED_FIELDS = ['username']

    def __str__(self):
        return self.username