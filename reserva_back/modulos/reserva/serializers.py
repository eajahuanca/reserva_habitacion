from rest_framework import serializers

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


class PaisSerializers(serializers.ModelSerializer):
    class Meta:
        model = Pais
        fields = ['id', 'pais']


class TipoDocumentoSerializers(serializers.ModelSerializer):
    class Meta:
        model = TipoDocumento
        fields = ['id', 'tipo']


class MetodoPagoSerializers(serializers.ModelSerializer):
    class Meta:
        model = MetodoPago
        fields = ['id', 'pago']


class ClienteSerializer(serializers.ModelSerializer):
    pais = PaisSerializers(read_only=True)
    pais_id = serializers.IntegerField()

    class Meta:
        model = Cliente
        fields = [
            'id',
            'nombre',
            'apellido',
            'direccion',
            'correo_electronico',
            'telefono',
            'pais_id',
            'pais'
        ]


class HotelSerializers(serializers.ModelSerializer):
    pais = PaisSerializers(read_only=True)
    pais_id = serializers.IntegerField()

    class Meta:
        model = Hotel
        fields = [
            'id',
            'nombre',
            'direccion',
            'pais_id',
            'pais'
        ]


class CategoriaSerializers(serializers.ModelSerializer):
    class Meta:
        model = Categoria
        fields = ['id', 'categoria']


class HabitacionSerializers(serializers.ModelSerializer):
    hotel = HotelSerializers(read_only=True)
    hotel_id = serializers.IntegerField()
    categoria = CategoriaSerializers(read_only=True)
    categoria_id = serializers.IntegerField()

    class Meta:
        model = Habitacion
        fields = [
            'id',
            'descripcion',
            'hotel_id',
            'hotel',
            'categoria_id',
            'categoria'
        ]


class EstadoSerializers(serializers.ModelSerializer):
    class Meta:
        model = Estado
        fields = ['id', 'estado']


class ReservaClienteSerializers(serializers.ModelSerializer):
    cliente = ClienteSerializer(read_only=True)
    cliente_id = serializers.IntegerField()
    tipo_documento = TipoDocumentoSerializers(read_only=True)
    tipo_documento_id = serializers.IntegerField()
    habitacion = HabitacionSerializers(read_only=True)
    habitacion_id = serializers.IntegerField()
    metodo_pago = MetodoPagoSerializers(read_only=True)
    metodo_pago_id = serializers.IntegerField()

    class Meta:
        model = ReservaCliente
        fields = [
            'cliente_id', 'cliente',
            'razon_social',
            'numero_documento',
            'tipo_documento_id', 'tipo_documento',
            'habitacion_id', 'habitacion',
            'fecha_desde',
            'fecha_hasta',
            'costo_total',
            'metodo_pago_id', 'metodo_pago'
        ]


class ReservaEstadoSerializer(serializers.ModelSerializer):
    reserva = ReservaClienteSerializers(read_only=True)
    reserva_id = serializers.IntegerField()
    estado = EstadoSerializers(read_only=True)
    estado_id = serializers.IntegerField()

    class Meta:
        model = ReservaEstado
        fields = [
            'id',
            'reserva_id', 'reserva',
            'estado_id', 'estado'
        ]
