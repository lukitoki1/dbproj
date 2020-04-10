from django.urls import include, path
from . import views
from rest_framework import routers


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
    path('api-auth/', include('rest_framework.urls', namespace='rest_framework')),
]
