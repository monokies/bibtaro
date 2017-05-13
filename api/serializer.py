from rest_framework import serializers
from .models import BookRentalStatus

class BookRentalStatusSerializer(serializers.ModelSerializer):
    class Meta:
        model = BookRentalStatus
        fields = ('book_id',)
