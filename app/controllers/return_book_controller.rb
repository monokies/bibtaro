require "date"

class ReturnBookController < ApplicationController
  def return_api
    # The below code is my ruby practice! I delete this later.
    book_id = params[:bookId]
    user_code = params[:userCode]
    if params[:lentTo]
      lent_to = params[:lentTo]
    else
      lent_to = DateTime.now.strftime("%Y-%m-%d %H:%M:%S")
    end

    if has_lent_book(book_id, user_code) then
      puts('having!')
      begin
        return_book(book_id, user_code, lent_to)
        status = :ok
        message = '成功！'
      rescue => e
        puts(e)
        status = :bad_request
        message = '貸し出しトランザクションに失敗しました。'
      end
    else
      puts('not having!')
      status = :bad_request
      message = '貸し出されている本はありません。'
    end

    res = {'message' => message}
    render :json => res, :status => status
  end

  def has_lent_book(book_id, user_code)
    # Impliment database process after created database.
    if book_id == '00000000' then
      return false
    end
    return true
  end

  def return_book(book_id, user_code, lent_to)
    # Impliment database process after created database.
    # Currently, this define return `true` for all access!
    puts('The process of return is unimpliment.')
    # This is for test.
    if user_code == '99999999' then
      raise IOError, '更新時にエラーが発生しました'
    end
  end

end
