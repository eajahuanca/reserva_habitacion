from django.contrib import admin
from django.urls import path, include
from django.conf.urls.static import static
from django.conf import settings

import modulos.reserva.urls as urls_reserva

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/reserva/', include(urls_reserva), name='urls_reserva'),
]

urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)

