from django.shortcuts import render
from django.http import HttpResponse
from rest_framework import viewsets

from .serializers import *
from .models import *


def index(request):
    return HttpResponse("Hello, world!")


class UserViewSet(viewsets.ModelViewSet):
    queryset = User.objects.all().order_by('name')
    serializer_class = UserSerializer


class BrandViewSet(viewsets.ModelViewSet):
    queryset = Brand.objects.all().order_by('id')
    serializer_class = BrandSerializer


class CarViewSet(viewsets.ModelViewSet):
    queryset = Car.objects.all().order_by('id')
    serializer_class = CarSerializer


class HashtagViewSet(viewsets.ModelViewSet):
    queryset = Hashtag.objects.all().order_by('name')
    serializer_class = HashtagSerializer


class ThreadViewSet(viewsets.ModelViewSet):
    queryset = Thread.objects.all().order_by('id')
    serializer_class = ThreadSerializer


class CommentViewSet(viewsets.ModelViewSet):
    queryset = Comment.objects.all().order_by('id')
    serializer_class = CommentSerializer
