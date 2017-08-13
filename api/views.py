#from django.shortcuts import render

# Create your views here.
#from rest_framework import generics
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
    #queryset = Books.objects.all()
    serializer_class = BooksSerializer

    def get_queryset(self):
        queryset = Books.objects.all()

        # TODO:
        #   - Error handling

        # Title
        t = self.request.query_params.get('title', None)
        if t:
            queryset = queryset.filter(title__contains=t)
        # Author
        a = self.request.query_params.get('author', None)
        if a:
            queryset = queryset.filter(author__contains=a)
        # Category
        c = self.request.query_params.get('category', None)
        if c:
            queryset = queryset.filter(category=c)
        return queryset


class UsersViewSet(viewsets.ModelViewSet):
    queryset = Users.objects.all()
    serializer_class = UsersSerializer
