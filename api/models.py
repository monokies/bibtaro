from django.db import models

# Create your models here.

class BookRentalStatus(models.Model):
    book_id = models.CharField(max_length=10)
    user_id = models.CharField(max_length=10)
    status = models.CharField(max_length=10)
    lent_from = models.DateTimeField(auto_now_add=True)
    scheduled_lent_to = models.DateTimeField(auto_now_add=True)
    lent_to = models.DateTimeField(auto_now_add=True)
