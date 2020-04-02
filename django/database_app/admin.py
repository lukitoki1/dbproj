from django.contrib import admin
from .models import *

admin.site.register(User)
admin.site.register(Brand)
admin.site.register(Car)
admin.site.register(Hashtag)
admin.site.register(Thread)
admin.site.register(Comment)
