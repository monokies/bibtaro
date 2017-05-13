from rest_framework import serializers
from .models import BookRentalStatus, Users, Books

class BookRentalStatusSerializer(serializers.ModelSerializer):
    class Meta:
        model = BookRentalStatus
        fields = ('book_id',
                  'user_id',
                  'status',
                  'lent_from',
                  'scheduled_lent_to',
                  'lent_to',
                  )

class UsersSerializer(serializers.ModelSerializer):
    class Meta:
        model = Users
        fields = ('last_name',
                  'first_name',
                  'last_name_kana',
                  'first_name_kana',
                  'email',
                  'password',)


class BooksSerializer(serializers.ModelSerializer):
    class Meta:
        model = Books
        fields = ('isbn',
                  'title',
                  'category',
                  'author',
                  'editor',
                  'translator',
                  'publisher',
                  'publishedDate',
                  'edition',
                  'image',
                  'description',
                  'registerTime'
                  )
                  

