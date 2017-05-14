from rest_framework import routers
from .views import BookRentalStatusViewSet
from .views import BooksViewSet
from .views import UsersViewSet

router = routers.DefaultRouter()
router.register(r'book_rental_status', BookRentalStatusViewSet)
router.register(r'books', BooksViewSet)
router.register(r'users', UsersViewSet)
