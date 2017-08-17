"""Models for bibtaro database."""
from django.db import models

class BookRentalStatus(models.Model):
    book_id = models.IntegerField(max_length=10)
    user_id = models.IntegerField(max_length=10)
    status = models.IntegerField(max_length=10)
    lent_from = models.DateTimeField()
    scheduled_lent_to = models.DateTimeField()
    lent_to = models.DateTimeField()


class Users(models.Model):
    last_name = models.CharField(max_length=10)
    first_name = models.CharField(max_length=10)
    last_name_kana = models.CharField(max_length=10)
    first_name_kana = models.CharField(max_length=10)
    email = models.CharField(max_length=255)
    password = models.CharField(max_length=255)


class Books(models.Model):
    isbn = models.IntegerField(max_length=15)
    title = models.CharField(max_length=255)
    category = models.IntegerField(max_length=3)
    author = models.CharField(max_length=255)
    editor = models.CharField(max_length=255)
    translator = models.CharField(max_length=255)
    publisher = models.CharField(max_length=255)
    publishedDate = models.DateTimeField()
    edition = models.CharField(max_length=255)
    image = models.CharField(max_length=255)
    description = models.CharField(max_length=255)
    registerTime = models.DateTimeField()

class Image(models.Model):
    book_id = models.IntegerField(max_length=10)
    image_path = models.CharField(max_length=255)

class Pdf(models.Model):
    book_id = models.IntegerField(max_length=10)
    pdf_path = models.CharField(max_length=255)
