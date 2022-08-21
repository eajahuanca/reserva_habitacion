from __future__ import unicode_literals
from django.db import models


class LogModel(models.Model):
    """
    Modelo que implementa los campos de log
    creacion, modificacion y eliminacion
    """
    fecha_creacion = models.DateTimeField(auto_now_add=True)
    fecha_modificacion = models.DateTimeField(null=True, blank=True)
    fecha_eliminacion = models.DateTimeField(null=True, blank=True)

    class Meta:
        abstract = True
