from django.db import models
from django.db.models import UniqueConstraint


class User(models.Model):
    nick = models.CharField(max_length=50, primary_key=True)
    name = models.CharField(max_length=50)
    location = models.CharField(max_length=100)

    def __str__(self):
        return self.pk


class Brand(models.Model):
    brand = models.CharField(max_length=30)
    model = models.CharField(max_length=100)
    country = models.CharField(max_length=100)
    production_begin = models.DateField()
    production_end = models.DateField()

    def __str__(self):
        return f"{self.brand} {self.model}"


class Car(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    brand = models.ForeignKey(Brand, on_delete=models.CASCADE)
    production_date = models.DateField()
    description = models.CharField(max_length=3000, blank=True)

    def __str__(self):
        return f"{self.user}'s {self.brand}"


class Hashtag(models.Model):
    name = models.CharField(max_length=50, primary_key=True)

    def __str__(self):
        return self.pk


class Thread(models.Model):
    title = models.CharField(max_length=200)
    content = models.CharField(max_length=5000)
    timestamp = models.DateTimeField(blank=True)
    brand = models.ForeignKey(Brand, on_delete=models.PROTECT)
    hashtags = models.ManyToManyField(Hashtag, blank=True)
    nick = models.ForeignKey(User, on_delete=models.PROTECT)

    def __str__(self):
        return self.title


class Comment(models.Model):
    content = models.CharField(max_length=5000)
    timestamp = models.DateTimeField(blank=True)
    thread = models.ForeignKey(Thread, on_delete=models.CASCADE)
    nick = models.ForeignKey(User, on_delete=models.PROTECT)

    def __str__(self):
        return self.pk
