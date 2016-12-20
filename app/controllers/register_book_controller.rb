# coding: utf-8

class RegisterBookController < ApplicationController

  def register_api
      # The below code is my ruby practice! I delete this later.
      info = [
          'isbn', 'title', 'categorCode', 'author', 'editer', 'translator',
          'publisher', 'publishedDate', 'edition', 'image', 'description']
      @debug_msg = params
      # param_chk => isbn, title is must
      bookId = userCode[:userCode]
      bookInfo = params[:books]
      rec = {}
      for v in info do
          # set value
          if v in bookInfo then
            rec[v] = bookInfo[v]
          end
      end
      # insert record.
      res = 'Registered 1 book. (title)'
      @return_msg = res
      render :json => res
    # Processes of this api are below.
    # 100. change return type to json
    # 200. check parameter(not important)
    # 300. load existing record
    # 400. update database
    # 500. return message
    # 600. delete erb file(not important)
    end
end
