from django.conf.urls import url

from rest_framework import routers
from .views import BookRentalStatusViewSet
from . import views

#urlpatterns = [
#    url(r'^$', views.testview, name='testvies')
#]

router = routers.DefaultRouter()
router.register(r'book_rental_status', BookRentalStatusViewSet)

