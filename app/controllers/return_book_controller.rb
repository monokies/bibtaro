require "date"

class ReturnBookController < ApplicationController
  # 返却用API
  def return_api
    book_id = params[:bookId]
    user_code = params[:userCode]
    if params[:lentTo]
      lent_to = params[:lentTo]
    else
      lent_to = DateTime.now.strftime("%Y-%m-%d %H:%M:%S")
    end

    # 本当はこの処理の間はトランザクションをかけておくべきだが、
    # 今は必要最低限の機能に収めておく様にする
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

  # 貸し出し中の本があるかどうかをチェックする。
  def has_lent_book(book_id, user_code)
    # 貸し出し中のステータスは2なので、2で絞る様にする。
    # 本当はModel側にこのロジックは作るべき？
    # あと、貸し出しが2件以上ある場合は、NGとすべき？
    lending_status = 2
    @lending_book = BookRentalStatus.find_by(bookId: book_id,
                                            userId: user_code,
                                            status: lending_status)
    if @lending_book.nil?
      return false
    end
    return true
  end

  # DBに対して返却処理を実行する
  def return_book(book_id, user_code, lent_to)
    lent_status = 3
    puts('実行!')
    # インスタンス変数を使うのが正義なのかわからない...
    @lending_book.status = lent_status
    @lending_book.save
  end

end
