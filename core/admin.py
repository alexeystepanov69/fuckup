from django.contrib import admin

from core.models import MyModel


# Register your models here.
@admin.register(MyModel)
class ModelNameAdmin(admin.ModelAdmin):
    list_display = ('name', 'age')
