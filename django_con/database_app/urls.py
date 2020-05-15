from django.urls import include, path
from rest_framework.schemas import get_schema_view

from . import views
from rest_framework import routers
from django.views.generic import TemplateView

router = routers.DefaultRouter()
router.register(r'users', views.UserViewSet)
router.register(r'brands', views.BrandViewSet)
router.register(r'cars', views.CarViewSet)
router.register(r'hashtags', views.HashtagViewSet)
router.register(r'threads', views.ThreadViewSet)
router.register(r'comments', views.CommentViewSet)

urlpatterns = [
    path('index/', views.index, name='index'),
    path('', include(router.urls)),
    path('openapi/', get_schema_view(
        title="Your Project",
        description="API for all things …",
        version="1.0.0"
    ), name='openapi-schema'),
    path('swagger-ui/', TemplateView.as_view(
        template_name='swagger-ui.html',
        extra_context={'schema_url': 'openapi-schema'}
    ), name='swagger-ui'),
    path('api-auth/', include('rest_framework.urls', namespace='rest_framework')),
]
