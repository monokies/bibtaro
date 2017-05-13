#from django.shortcuts import render

# Create your views here.
from rest_framework import viewsets
from django.http import JsonResponse
from .models import BookRentalStatus
from .serializer import BookRentalStatusSerializer

def testview(request):
    data = {'hoge': 'foo'}
    return JsonResponse(data)

class BookRentalStatusViewSet(viewsets.ModelViewSet):
    queryset = BookRentalStatus.objects.all()
    serializer_class = BookRentalStatusSerializer
