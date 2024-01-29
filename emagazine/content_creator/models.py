from django.db import models

# Create your models here.
class creator_details(models.Model):
    name = models.CharField(max_length=255)
    email = models.EmailField(max_length=255)
    phone = models.CharField(max_length=255)
    password = models.CharField(max_length=255)

class Magazine(models.Model):
    content = models.TextField()

class creator_table(models.Model):
    event = models.CharField(max_length=255)
    venue = models.CharField(max_length=255)
    event_date = models.DateField()
    guests = models.CharField(max_length=255)
    extpart = models.CharField(max_length=255)
    intpart = models.EmailField(max_length=255)
    spepoint = models.CharField(max_length=255)
    highofthevent = models.CharField(max_length=255)
    NoofIma = models.CharField(max_length=255)
    UpIma = models.ImageField(upload_to="content_images")
    UpIma1 = models.ImageField(upload_to="content_images",null=True)
    UpIma2 = models.ImageField(upload_to="content_images",null=True)
    template = models.CharField(max_length=255,null=True)

class template_images(models.Model):
    name = models.CharField(max_length=255,null=True)
    img_name = models.CharField(max_length=255)
    UpIma = models.ImageField(upload_to="template_img")