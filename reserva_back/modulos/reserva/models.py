from django.db import models
from modulos.administracion.models import LogModel


class Pais(LogModel):
    pais = models.CharField(max_length=20, unique=True)


class TipoDocumento(LogModel):
    tipo = models.CharField(max_length=20, unique=True)


class MetodoPago(LogModel):
    pago = models.CharField(max_length=50, unique=True)


class Cliente(LogModel):
    nombre = models.CharField(max_length=20)
    apellido = models.CharField(max_length=30, null=True, blank=True)
    direccion = models.CharField(max_length=50)
    correo_electronico = models.CharField(max_length=100)
    telefono = models.CharField(max_length=10)
    pais = models.ForeignKey(Pais, related_name='+', on_delete=models.PROTECT)


class Hotel(LogModel):
    nombre = models.CharField(max_length=50)
    direccion = models.CharField(max_length=100)
    pais = models.ForeignKey(Pais, related_name='+', on_delete=models.PROTECT)


class Categoria(LogModel):
    categoria = models.CharField(max_length=50, unique=True)


class Habitacion(LogModel):
    descripcion = models.CharField(max_length=100)
    hotel = models.ForeignKey(Hotel, related_name='+', on_delete=models.PROTECT)
    categoria = models.ForeignKey(Categoria, related_name='+', on_delete=models.PROTECT)


class Estado(LogModel):
    estado = models.CharField(max_length=10, unique=True)


class ReservaCliente(LogModel):
    cliente = models.ForeignKey(Cliente, related_name='+', on_delete=models.PROTECT)
    razon_social = models.CharField(max_length=50)
    numero_documento = models.CharField(max_length=15)
    tipo_documento = models.ForeignKey(TipoDocumento, related_name='+', on_delete=models.PROTECT)
    habitacion = models.ForeignKey(Habitacion, related_name='+', on_delete=models.PROTECT)
    fecha_desde = models.DateField()
    fecha_hasta = models.DateField()
    costo_total = models.DecimalField(max_digits=10, decimal_places=2)
    metodo_pago = models.ForeignKey(MetodoPago, related_name='+', on_delete=models.PROTECT)


class ReservaEstado(LogModel):
    reserva = models.ForeignKey(ReservaCliente, related_name='+', on_delete=models.PROTECT)
    estado = models.ForeignKey(Estado, related_name='+', on_delete=models.PROTECT)
