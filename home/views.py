#from django.shortcuts import render
from django.http import HttpResponse
from django.template import loader

# Create your views here.

def home(request):
    t = loader.get_template('home.html')
    c = {}
    return HttpResponse(t.render(c, request))
