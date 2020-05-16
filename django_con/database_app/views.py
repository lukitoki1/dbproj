from django.shortcuts import render
from django.http import HttpResponse
from rest_framework import viewsets, mixins, renderers
from rest_framework import generics
from rest_framework.decorators import action
from rest_framework.response import Response

from .serializers import *
from .models import *

import logging

logger = logging.getLogger(__name__)


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


class HashtagViewSet(mixins.CreateModelMixin,
                     mixins.RetrieveModelMixin,
                     mixins.ListModelMixin,
                     viewsets.GenericViewSet):
    queryset = Hashtag.objects.all().order_by('name')
    serializer_class = HashtagSerializer

    def retrieve(self, request, *args, **kwargs):
        lookup_url_kwarg = self.lookup_url_kwarg or self.lookup_field
        instance = Hashtag.objects.get(name="#" + self.kwargs[lookup_url_kwarg])
        serializer = self.get_serializer(instance)
        return Response(serializer.data)


class ThreadViewSet(viewsets.ModelViewSet):
    queryset = Thread.objects.all().order_by('id')
    serializer_class = ThreadSerializer


class CommentViewSet(viewsets.ModelViewSet):
    queryset = Comment.objects.all().order_by('id')
    serializer_class = CommentSerializer
