from rest_framework.routers import DefaultRouter

from .views import (
    PaisViewsets,
    TipoDocumentoViewsets,
    MetodoPagoViewsets,
    ClienteViewsets,
    HotelViewsets,
    CategoriaViewsets,
    HabitacionViewsets,
    EstadoViewsets,
    ReservaClienteViewsets,
    ReservaEstadoViewsets
)

api_router = DefaultRouter()

api_router.register('pais', PaisViewsets, 'pais')
api_router.register('tipodocumento', TipoDocumentoViewsets, 'tipo_documento')
api_router.register('metodopago', MetodoPagoViewsets, 'metodo_pago')
api_router.register('cliente', ClienteViewsets, 'cliente')
api_router.register('hotel', HotelViewsets, 'hotel')
api_router.register('categoria', CategoriaViewsets, 'categoria')
api_router.register('habitacion', HabitacionViewsets, 'habitacion')
api_router.register('estado', EstadoViewsets, 'estado')
api_router.register('reservacliente', ReservaClienteViewsets, 'reserva_cliente')
api_router.register('reservaestado', ReservaEstadoViewsets, 'reserva_estado')

urlpatterns = api_router.urls
