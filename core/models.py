from django.db import models

from core.forms import *


# Create your models here.
class MyModel(models.Model):
    name = models.CharField(max_length=100, blank=True)
    age = models.IntegerField(default=0, blank=True)
