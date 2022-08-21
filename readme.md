# Proyecto Reserva Habitacion
El siguiente proyecto corre sobre python v3.9
Si es necesario puede instalar los siguientes requerimientos
```
pip install -r requirements.txt
```

## EndPoints
Para este fin solo se muestran los endpoints GET y POST, sin embargo pueden probar los verbos faltantes como PUT (con los mismos parametros solo que al final /PK/) y DELETE (/PK/)
### Pais
```
POST  http://localhost:8000/api/reserva/pais/
Params: {
            "pais": "BOLIVIA"
        }
Response:
    {
        "type": "success",
        "message": "pais creado(a)",
        "status": 201,
        "data": {
            "id": 1,
            "pais": "BOLIVIA"
        }
    }
        
GET  http://localhost:8000/api/reserva/pais/     
Response:   
[
    {
        "id": 1,
        "pais": "BOLIVIA"
    },
    {
        "id": 2,
        "pais": "PERU"
    }
]     
```
### Tipo de Documento
```
POST http://localhost:8000/api/reserva/tipodocumento/
Params:
{
    "tipo": "NIT"
}
Response:
{
    "type": "success",
    "message": "tipo documento creado(a)",
    "status": 201,
    "data": {
        "id": 1,
        "tipo": "NIT"
    }
}

GET http://localhost:8000/api/reserva/tipodocumento/
Response:
[
    {
        "id": 1,
        "tipo": "NIT"
    },
    {
        "id": 2,
        "tipo": "DNI"
    },
    {
        "id": 3,
        "tipo": "CI"
    }
]
```
### Metodo de Pago
```
POST http://localhost:8000/api/reserva/metodopago/
Params:
{
    "pago": "MASTER CARD"
}
Response:
{
    "type": "success",
    "message": "metodo pago creado(a)",
    "status": 201,
    "data": {
        "id": 1,
        "pago": "MASTER CARD"
    }
}

GET http://localhost:8000/api/reserva/metodopago/
Response:
[
    {
        "id": 1,
        "pago": "MASTER CARD"
    },
    {
        "id": 2,
        "pago": "DEPOSITO BANCARIO"
    },
    {
        "id": 3,
        "pago": "VIA PAYPAL"
    }
]
```
### Cliente
```
POST http://localhost:8000/api/reserva/cliente/
Params:
{
    "nombre": "JUAN",
    "apellido": "PEREZ PEPITO",
    "direccion": "LAS RETAMAS ESQ.AROMA NRO. 10",
    "correo_electronico": "juan.pepito@gmail.com",
    "telefono": "6547774",
    "pais_id": 1
}
Response:
{
    "type": "success",
    "message": "cliente creado(a)",
    "status": 201,
    "data": {
        "id": 1,
        "nombre": "JUAN",
        "apellido": "PEREZ PEPITO",
        "direccion": "LAS RETAMAS ESQ.AROMA NRO. 10",
        "correo_electronico": "juan.pepito@gmail.com",
        "telefono": "6547774",
        "pais_id": 1,
        "pais": {
            "id": 1,
            "pais": "BOLIVIA"
        }
    }
}

GET http://localhost:8000/api/reserva/cliente/
Response:
[
    {
        "id": 1,
        "nombre": "JUAN",
        "apellido": "PEREZ PEPITO",
        "direccion": "LAS RETAMAS ESQ.AROMA NRO. 10",
        "correo_electronico": "juan.pepito@gmail.com",
        "telefono": "6547774",
        "pais_id": 1,
        "pais": {
            "id": 1,
            "pais": "BOLIVIA"
        }
    }
]

GET ONE http://localhost:8000/api/reserva/cliente/1 
Response:
{
    "id": 1,
    "nombre": "JUAN",
    "apellido": "PEREZ PEPITO",
    "direccion": "LAS RETAMAS ESQ.AROMA NRO. 10",
    "correo_electronico": "juan.pepito@gmail.com",
    "telefono": "6547774",
    "pais_id": 1,
    "pais": {
        "id": 1,
        "pais": "BOLIVIA"
    }
}
```
### Hotel
```
POST http://localhost:8000/api/reserva/hotel/
Params:
{
    "nombre": "LAS 5 ESTRELLAS",
    "direccion": "MIRAFLORES CALLE LAS ROSAS NRO. 111",
    "pais_id": 1
}
Response:
{
    "type": "success",
    "message": "hotel creado(a)",
    "status": 201,
    "data": {
        "id": 1,
        "nombre": "LAS 5 ESTRELLAS",
        "direccion": "MIRAFLORES CALLE LAS ROSAS NRO. 111",
        "pais_id": 1,
        "pais": {
            "id": 1,
            "pais": "BOLIVIA"
        }
    }
}

GET http://localhost:8000/api/reserva/hotel/
Response
[
    {
        "id": 1,
        "nombre": "LAS 5 ESTRELLAS",
        "direccion": "MIRAFLORES CALLE LAS ROSAS NRO. 111",
        "pais_id": 1,
        "pais": {
            "id": 1,
            "pais": "BOLIVIA"
        }
    },
    {
        "id": 2,
        "nombre": "EL TABU",
        "direccion": "CHICLAYO CALLE LAS MERCEDES NRO. 110",
        "pais_id": 2,
        "pais": {
            "id": 2,
            "pais": "PERU"
        }
    }
]
```
### Categoria
```
POST http://localhost:8000/api/reserva/categoria/
Params:
{
    "categoria": "VIP"
}
Response:
{
    "type": "success",
    "message": "categoria creado(a)",
    "status": 201,
    "data": {
        "id": 1,
        "categoria": "VIP"
    }
}

GET http://localhost:8000/api/reserva/categoria/
Response
[
    {
        "id": 1,
        "categoria": "VIP"
    },
    {
        "id": 2,
        "categoria": "MEDIA VIP"
    },
    {
        "id": 3,
        "categoria": "NORMAL"
    }
]
```
### Habitacion
```
POST http://localhost:8000/api/reserva/habitacion/
Params:
{
    "descripcion": "2 CAMAS, DUCHA Y SALA",
    "hotel_id": 1,
    "categoria_id": 1
}
Response:
{
    "type": "success",
    "message": "habitacion creado(a)",
    "status": 201,
    "data": {
        "id": 1,
        "descripcion": "2 CAMAS, DUCHA Y SALA",
        "hotel_id": 1,
        "hotel": {
            "id": 1,
            "nombre": "LAS 5 ESTRELLAS",
            "direccion": "MIRAFLORES CALLE LAS ROSAS NRO. 111",
            "pais_id": 1,
            "pais": {
                "id": 1,
                "pais": "BOLIVIA"
            }
        },
        "categoria_id": 1,
        "categoria": {
            "id": 1,
            "categoria": "VIP"
        }
    }
}

GET http://localhost:8000/api/reserva/habitacion/
Response:
[
    {
        "id": 1,
        "descripcion": "2 CAMAS, DUCHA Y SALA",
        "hotel_id": 1,
        "hotel": {
            "id": 1,
            "nombre": "LAS 5 ESTRELLAS",
            "direccion": "MIRAFLORES CALLE LAS ROSAS NRO. 111",
            "pais_id": 1,
            "pais": {
                "id": 1,
                "pais": "BOLIVIA"
            }
        },
        "categoria_id": 1,
        "categoria": {
            "id": 1,
            "categoria": "VIP"
        }
    },
    {
        "id": 2,
        "descripcion": "2 CAMAS, DUCHA",
        "hotel_id": 1,
        "hotel": {
            "id": 1,
            "nombre": "LAS 5 ESTRELLAS",
            "direccion": "MIRAFLORES CALLE LAS ROSAS NRO. 111",
            "pais_id": 1,
            "pais": {
                "id": 1,
                "pais": "BOLIVIA"
            }
        },
        "categoria_id": 2,
        "categoria": {
            "id": 2,
            "categoria": "MEDIA VIP"
        }
    }
]
```
### Estado
```
POST http://localhost:8000/api/reserva/estado/
Params:
{
    "estado": "PENDIENTE"
}
Response:
{
    "type": "success",
    "message": "estado creado(a)",
    "status": 201,
    "data": {
        "id": 1,
        "estado": "PENDIENTE"
    }
}

GET http://localhost:8000/api/reserva/estado/
Response:
[
    {
        "id": 1,
        "estado": "PENDIENTE"
    },
    {
        "id": 2,
        "estado": "PAGADO"
    },
    {
        "id": 3,
        "estado": "ELIMINADO"
    }
]
```
### Reserva Cliente
```
POST http://localhost:8000/api/reserva/reservacliente/
Params (Validando):
{
    "cliente_id": 1,
    "razon_social": "PEPITO Y ASOCIADOS",
    "numero_documento": "412211115",
    "tipo_documento_id": 1,
    "habitacion_id": 1,
    "fecha_desde": "",
    "fecha_hasta": "",
    "costo_total": 150,
    "metodo_pago": 1
}
Response Validando Datos:
{
    "type": "error",
    "message": "Se presentaron los siguientes errores",
    "status": 400,
    "data": {
        "fecha_desde": [
            "Fecha con formato erróneo. Use uno de los siguientes formatos en su lugar: YYYY-MM-DD."
        ],
        "fecha_hasta": [
            "Fecha con formato erróneo. Use uno de los siguientes formatos en su lugar: YYYY-MM-DD."
        ],
        "metodo_pago_id": [
            "Este campo es requerido."
        ]
    }
}

Params (Correcto):
{
    "cliente_id": 1,
    "razon_social": "PEPITO Y ASOCIADOS",
    "numero_documento": "412211115",
    "tipo_documento_id": 1,
    "habitacion_id": 1,
    "fecha_desde": "2022-08-18",
    "fecha_hasta": "2022-08-20",
    "costo_total": 150,
    "metodo_pago_id": 1
}
Response (Correcto):
{
    "type": "success",
    "message": "reserva cliente creado(a)",
    "status": 201,
    "data": {
        "cliente_id": 1,
        "cliente": {
            "id": 1,
            "nombre": "JUAN",
            "apellido": "PEREZ PEPITO",
            "direccion": "LAS RETAMAS ESQ.AROMA NRO. 10",
            "correo_electronico": "juan.pepito@gmail.com",
            "telefono": "6547774",
            "pais_id": 1,
            "pais": {
                "id": 1,
                "pais": "BOLIVIA"
            }
        },
        "razon_social": "PEPITO Y ASOCIADOS",
        "numero_documento": "412211115",
        "tipo_documento_id": 1,
        "tipo_documento": {
            "id": 1,
            "tipo": "NIT"
        },
        "habitacion_id": 1,
        "habitacion": {
            "id": 1,
            "descripcion": "2 CAMAS, DUCHA Y SALA",
            "hotel_id": 1,
            "hotel": {
                "id": 1,
                "nombre": "LAS 5 ESTRELLAS",
                "direccion": "MIRAFLORES CALLE LAS ROSAS NRO. 111",
                "pais_id": 1,
                "pais": {
                    "id": 1,
                    "pais": "BOLIVIA"
                }
            },
            "categoria_id": 1,
            "categoria": {
                "id": 1,
                "categoria": "VIP"
            }
        },
        "fecha_desde": "2022-08-18",
        "fecha_hasta": "2022-08-20",
        "costo_total": "150.00",
        "metodo_pago_id": 1,
        "metodo_pago": {
            "id": 1,
            "pago": "MASTER CARD"
        }
    }
}

GET http://
Response:
[
    {
        "cliente_id": 1,
        "cliente": {
            "id": 1,
            "nombre": "JUAN",
            "apellido": "PEREZ PEPITO",
            "direccion": "LAS RETAMAS ESQ.AROMA NRO. 10",
            "correo_electronico": "juan.pepito@gmail.com",
            "telefono": "6547774",
            "pais_id": 1,
            "pais": {
                "id": 1,
                "pais": "BOLIVIA"
            }
        },
        "razon_social": "PEPITO Y ASOCIADOS",
        "numero_documento": "412211115",
        "tipo_documento_id": 1,
        "tipo_documento": {
            "id": 1,
            "tipo": "NIT"
        },
        "habitacion_id": 1,
        "habitacion": {
            "id": 1,
            "descripcion": "2 CAMAS, DUCHA Y SALA",
            "hotel_id": 1,
            "hotel": {
                "id": 1,
                "nombre": "LAS 5 ESTRELLAS",
                "direccion": "MIRAFLORES CALLE LAS ROSAS NRO. 111",
                "pais_id": 1,
                "pais": {
                    "id": 1,
                    "pais": "BOLIVIA"
                }
            },
            "categoria_id": 1,
            "categoria": {
                "id": 1,
                "categoria": "VIP"
            }
        },
        "fecha_desde": "2022-08-18",
        "fecha_hasta": "2022-08-20",
        "costo_total": "150.00",
        "metodo_pago_id": 1,
        "metodo_pago": {
            "id": 1,
            "pago": "MASTER CARD"
        }
    }
]
```
### Reserva Estado
```
POST http://localhost:8000/api/reserva/reservaestado/
Params:
{
    "reserva_id": 1,
    "estado_id": 1
}
Response:
{
    "type": "success",
    "message": "reserva estado creado(a)",
    "status": 201,
    "data": {
        "id": 1,
        "reserva_id": 1,
        "reserva": {
            "cliente_id": 1,
            "cliente": {
                "id": 1,
                "nombre": "JUAN",
                "apellido": "PEREZ PEPITO",
                "direccion": "LAS RETAMAS ESQ.AROMA NRO. 10",
                "correo_electronico": "juan.pepito@gmail.com",
                "telefono": "6547774",
                "pais_id": 1,
                "pais": {
                    "id": 1,
                    "pais": "BOLIVIA"
                }
            },
            "razon_social": "PEPITO Y ASOCIADOS",
            "numero_documento": "412211115",
            "tipo_documento_id": 1,
            "tipo_documento": {
                "id": 1,
                "tipo": "NIT"
            },
            "habitacion_id": 1,
            "habitacion": {
                "id": 1,
                "descripcion": "2 CAMAS, DUCHA Y SALA",
                "hotel_id": 1,
                "hotel": {
                    "id": 1,
                    "nombre": "LAS 5 ESTRELLAS",
                    "direccion": "MIRAFLORES CALLE LAS ROSAS NRO. 111",
                    "pais_id": 1,
                    "pais": {
                        "id": 1,
                        "pais": "BOLIVIA"
                    }
                },
                "categoria_id": 1,
                "categoria": {
                    "id": 1,
                    "categoria": "VIP"
                }
            },
            "fecha_desde": "2022-08-18",
            "fecha_hasta": "2022-08-20",
            "costo_total": "150.00",
            "metodo_pago_id": 1,
            "metodo_pago": {
                "id": 1,
                "pago": "MASTER CARD"
            }
        },
        "estado_id": 1,
        "estado": {
            "id": 1,
            "estado": "PENDIENTE"
        }
    }
}

GET http://localhost:8000/api/reserva/reservaestado/
Response:
[
    {
        "id": 1,
        "reserva_id": 1,
        "reserva": {
            "cliente_id": 1,
            "cliente": {
                "id": 1,
                "nombre": "JUAN",
                "apellido": "PEREZ PEPITO",
                "direccion": "LAS RETAMAS ESQ.AROMA NRO. 10",
                "correo_electronico": "juan.pepito@gmail.com",
                "telefono": "6547774",
                "pais_id": 1,
                "pais": {
                    "id": 1,
                    "pais": "BOLIVIA"
                }
            },
            "razon_social": "PEPITO Y ASOCIADOS",
            "numero_documento": "412211115",
            "tipo_documento_id": 1,
            "tipo_documento": {
                "id": 1,
                "tipo": "NIT"
            },
            "habitacion_id": 1,
            "habitacion": {
                "id": 1,
                "descripcion": "2 CAMAS, DUCHA Y SALA",
                "hotel_id": 1,
                "hotel": {
                    "id": 1,
                    "nombre": "LAS 5 ESTRELLAS",
                    "direccion": "MIRAFLORES CALLE LAS ROSAS NRO. 111",
                    "pais_id": 1,
                    "pais": {
                        "id": 1,
                        "pais": "BOLIVIA"
                    }
                },
                "categoria_id": 1,
                "categoria": {
                    "id": 1,
                    "categoria": "VIP"
                }
            },
            "fecha_desde": "2022-08-18",
            "fecha_hasta": "2022-08-20",
            "costo_total": "150.00",
            "metodo_pago_id": 1,
            "metodo_pago": {
                "id": 1,
                "pago": "MASTER CARD"
            }
        },
        "estado_id": 1,
        "estado": {
            "id": 1,
            "estado": "PENDIENTE"
        }
    }
]
```
