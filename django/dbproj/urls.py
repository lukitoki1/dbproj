from django.contrib import admin
from django.urls import path, include

urlpatterns = [
    path('app/', include('database_app.urls')),
    path('admin/', admin.site.urls),
]
