#from django.shortcuts import render

# Create your views here.
from rest_framework import viewsets
from .models import BookRentalStatus
from .models import Books
from .models import Users
from .serializer import BookRentalStatusSerializer
from .serializer import BooksSerializer
from .serializer import UsersSerializer


class BookRentalStatusViewSet(viewsets.ModelViewSet):
    queryset = BookRentalStatus.objects.all()
    serializer_class = BookRentalStatusSerializer


class BooksViewSet(viewsets.ModelViewSet):
    queryset = Books.objects.all()
    serializer_class = BooksSerializer


class UsersViewSet(viewsets.ModelViewSet):
    queryset = Users.objects.all()
    serializer_class = UsersSerializer
