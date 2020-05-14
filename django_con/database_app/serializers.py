from django.core.exceptions import ValidationError
from rest_framework import serializers
from rest_framework.validators import UniqueTogetherValidator
from datetime import date, datetime

from .models import *


class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ('nick', 'name', 'location')


# noinspection PyMethodMayBeStatic
class BrandSerializer(serializers.ModelSerializer):
    class Meta:
        model = Brand
        fields = ('id', 'brand', 'model', 'country', 'production_begin', 'production_end')
        validators = [
            UniqueTogetherValidator(
                Brand.objects.all(),
                ['brand', 'model'],
                "Car brand-model conjunctions must be unique."
            )
        ]

    def validate(self, attrs):
        if attrs['production_end'] < attrs['production_begin']:
            raise ValidationError(f"End date can't be further in time than begin date.")
        return attrs

    def validate_production_begin(self, production_begin: date):
        if production_begin > datetime.now().date():
            raise ValidationError(f"Date can't be a future date.")
        return production_begin

    def validate_production_end(self, production_end: date):
        if production_end > datetime.now().date():
            raise ValidationError(f"Date can't be a future date.")
        return production_end


# noinspection PyMethodMayBeStatic
class CarSerializer(serializers.ModelSerializer):
    class Meta:
        model = Car
        fields = ('id', 'user', 'brand', 'production_date', 'description')

    def validate(self, attrs):
        brand = Brand.objects.filter(id=attrs['brand'].id)[0]
        prod_date = attrs['production_date']
        if prod_date < brand.production_begin:
            raise ValidationError(f"This car has not been made before {brand.production_begin}.")
        if prod_date > brand.production_end:
            raise ValidationError(f"This car has not been made after {brand.production_end}.")
        return attrs


# noinspection PyMethodMayBeStatic
class HashtagSerializer(serializers.ModelSerializer):
    class Meta:
        model = Hashtag
        fields = ['name']

    def validate_name(self, name: str):
        return "#" + name if name[0] is not "#" else name


class ThreadSerializer(serializers.ModelSerializer):
    timestamp = serializers.ReadOnlyField()

    class Meta:
        model = Thread
        fields = ('id', 'title', 'content', 'timestamp', 'brand', 'hashtags', 'nick')

    def validate(self, attrs):
        cars = Car.objects.filter(user=attrs['nick'].nick).filter(brand=attrs['brand'].id)
        if not cars:
            raise ValidationError(f"You don't own {attrs['brand']} branded car, so you can't discuss about it.")

        attrs['timestamp'] = datetime.now()
        return attrs


class CommentSerializer(serializers.ModelSerializer):
    class Meta:
        model = Comment
        fields = ('id', 'content', 'timestamp', 'thread', 'nick')

    def validate(self, attrs):
        cars = Car.objects.filter(user=attrs['nick'].nick).filter(brand=attrs['thread'].brand)
        brand = Brand.objects.get(id=attrs['thread'].brand.id)
        if not cars:
            raise ValidationError(f"You don't own {brand} branded car, so you can't discuss about it.")

        attrs['timestamp'] = datetime.now()
        return attrs
