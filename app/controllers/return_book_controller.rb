class ReturnBookController < ApplicationController
  def return_api
    # The below code is my ruby practice! I delete this later.
    @debug_msg = params
    bookId = params[:bookId]
    if bookId == '12345' then
      @return_msg = 'Success!'
    else
      @return_msg = 'Fail!'
    end
    # Processes of this api are below.
    # 100. change return type to json
    # 200. check parameter(not important)
    # 300. load existing record
    # 400. update database
    # 500. return message
    # 600. delete erb file(not important)
  end
end
