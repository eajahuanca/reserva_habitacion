from modulos.administracion.viewsets import RestLogModelViewSet
from .models import (
    Pais,
    TipoDocumento,
    MetodoPago,
    Cliente,
    Hotel,
    Categoria,
    Habitacion,
    Estado,
    ReservaCliente,
    ReservaEstado
)
from .serializers import (
    PaisSerializers,
    TipoDocumentoSerializers,
    MetodoPagoSerializers,
    ClienteSerializer,
    HotelSerializers,
    CategoriaSerializers,
    HabitacionSerializers,
    EstadoSerializers,
    ReservaClienteSerializers,
    ReservaEstadoSerializer
)


class PaisViewsets(RestLogModelViewSet):
    model = Pais
    serializer_class = PaisSerializers
    queryset = Pais.objects.filter(fecha_eliminacion__isnull=True)


class TipoDocumentoViewsets(RestLogModelViewSet):
    model = TipoDocumento
    serializer_class = TipoDocumentoSerializers
    queryset = TipoDocumento.objects.filter(fecha_eliminacion__isnull=True)


class MetodoPagoViewsets(RestLogModelViewSet):
    model = MetodoPago
    serializer_class = MetodoPagoSerializers
    queryset = MetodoPago.objects.filter(fecha_eliminacion__isnull=True)


class ClienteViewsets(RestLogModelViewSet):
    model = Cliente
    serializer_class = ClienteSerializer
    queryset = Cliente.objects.filter(fecha_eliminacion__isnull=True)


class HotelViewsets(RestLogModelViewSet):
    model = Hotel
    serializer_class = HotelSerializers
    queryset = Hotel.objects.filter(fecha_eliminacion__isnull=True)


class CategoriaViewsets(RestLogModelViewSet):
    model = Categoria
    serializer_class = CategoriaSerializers
    queryset = Categoria.objects.filter(fecha_eliminacion__isnull=True)


class HabitacionViewsets(RestLogModelViewSet):
    model = Habitacion
    serializer_class = HabitacionSerializers
    queryset = Habitacion.objects.filter(fecha_eliminacion__isnull=True)


class EstadoViewsets(RestLogModelViewSet):
    model = Estado
    serializer_class = EstadoSerializers
    queryset = Estado.objects.filter(fecha_eliminacion__isnull=True)


class ReservaClienteViewsets(RestLogModelViewSet):
    model = ReservaCliente
    serializer_class = ReservaClienteSerializers
    queryset = ReservaCliente.objects.filter(fecha_eliminacion__isnull=True)


class ReservaEstadoViewsets(RestLogModelViewSet):
    model = ReservaEstado
    serializer_class = ReservaEstadoSerializer
    queryset = ReservaEstado.objects.filter(fecha_eliminacion__isnull=True)
