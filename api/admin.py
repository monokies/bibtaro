from django.contrib import admin
from .models import BookRentalStatus
from .models import Books
from .models import Users

# Register your models here.
@admin.register(BookRentalStatus)
class BookRentalStatus(admin.ModelAdmin):
    pass


@admin.register(Books)
class Books(admin.ModelAdmin):
    pass


@admin.register(Users)
class Users(admin.ModelAdmin):
    pass
