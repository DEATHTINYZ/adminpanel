from django.db import models

# Create your models here.
class Std_parents(models.Model):
    stdfname = models.CharField(max_length=30)
    stdlname = models.CharField(max_length=30)
    stdaddress = models.CharField(max_length=100)
    stdemail = models.EmailField(max_length=30)
    stdcounty = models.CharField(max_length=30)
    stdpostalcode = models.IntegerField(max_length=5)
    stdmacaddress = models.CharField(max_length=30)
    fatherfname = models.CharField(max_length=30)
    fatherlname = models.CharField(max_length=30)
    motherfname = models.CharField(max_length=30)
    motherlname = models.CharField(max_length=30)
    parenttel = models.IntegerField(max_length=10)
    parenttelback = models.IntegerField(max_length=10)


class Driver(models.Model):
    driverfname = models.CharField(max_length=30)
    driverlname = models.CharField(max_length=30)
    drivertel = models.IntegerField(max_length=10)
    attendantfname = models.CharField(max_length=30)
    attendantlname = models.CharField(max_length=30)
    attendanttel = models.IntegerField(max_length=10)
    brand = models.CharField(max_length=30)
    vancode = models.CharField(max_length=30)
    schoolcode = models.CharField(max_length=30)


class School(models.Model):
    schoolname = models.CharField(max_length=50)
    schoolcode = models.CharField(max_length=50)
    schooladdress = models.CharField(max_length=100)
    schoolmail = models.EmailField(max_length=30)
    schooltel = models.IntegerField(max_length=10)
    schoolfax = models.CharField(max_length=50)