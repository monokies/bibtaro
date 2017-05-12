#from django.shortcuts import render

# Create your views here.

from django.http import JsonResponse

def testview(request):
    data = {'hoge': 'foo'}
    return JsonResponse(data)
