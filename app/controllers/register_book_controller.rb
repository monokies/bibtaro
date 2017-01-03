# coding: utf-8

class RegisterBookController < ApplicationController

  def register_api
      info = [
          'isbn', 'title', 'categorCode', 'author', 'editer', 'translator',
          'publisher', 'publishedDate', 'edition', 'image', 'description']
      params = {
        'userCode': 1, 'books': [{'isbn': 'aaaaa', 'title': 'sample' }]
      }
      # param_chk => title is must
      bookId = params[:userCode]
      books = params[:books]
      rec = {}
      for book in books do
          for v in info do
              # set value
              rec[:v] = book[:v]
          end
      end
      # insert record.
      res = 'Registered books. (title)'
      render :json => res
    # Processes of this api are below.
    # 100. change return type to json
    # 200. check parameter(not important)
    # 300. load existing record
    # 400. update database
    # 500. return message
    # 600. delete erb file(not important)
    end

    def chk_param





end
