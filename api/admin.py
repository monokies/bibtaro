from django.contrib import admin
from .models import BookRentalStatus

# Register your models here.
@admin.register(BookRentalStatus)
class BookRentalStatus(admin.ModelAdmin):
    pass
