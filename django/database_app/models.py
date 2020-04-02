from django.db import models


class User(models.Model):
    nick = models.CharField(max_length=50, primary_key=True)
    name = models.CharField(max_length=50)
    location = models.CharField(max_length=100)


class Brand(models.Model):
    brand = models.CharField(max_length=30)
    model = models.CharField(max_length=100)
    country = models.CharField(max_length=100)
    production_begin = models.DateField()
    production_end = models.DateField()


class Car(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    brand = models.ForeignKey(Brand, on_delete=models.CASCADE)
    production_date = models.DateField()
    description = models.CharField(max_length=3000)


class Hashtag(models.Model):
    name = models.CharField(max_length=50, primary_key=True)


class Thread(models.Model):
    title = models.CharField(max_length=200)
    content = models.CharField(max_length=5000)
    timestamp = models.DateTimeField()
    brand = models.ForeignKey(Brand, on_delete=models.PROTECT)
    hashtags = models.ManyToManyField(Hashtag)
    nick = models.ForeignKey(User, on_delete=models.PROTECT)


class Comment(models.Model):
    content = models.CharField(max_length=5000)
    timestamp = models.DateTimeField()
    thread = models.ForeignKey(Thread, on_delete=models.CASCADE)
    nick = models.ForeignKey(User, on_delete=models.PROTECT)
