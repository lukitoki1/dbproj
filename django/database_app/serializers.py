from . import models
from rest_framework import serializers


class UserSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = models.User
        fields = ('nick', 'name', 'location')


class BrandSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = models.Brand
        fields = ('id', 'brand', 'model', 'country', 'production_begin', 'production_end')


class CarSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = models.Car
        fields = ('id', 'user', 'brand', 'production_date', 'description')


class HashtagSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = models.Hashtag
        fields = ('name')


class ThreadSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = models.Thread
        fields = ('id', 'title', 'content', 'timestamp', 'brand', 'hashtags', 'nick')


class CommentSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = models.Comment
        fields = ('id', 'content', 'timestamp', 'thread', 'nick')
