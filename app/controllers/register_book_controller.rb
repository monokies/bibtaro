# coding: utf-8

class RegisterBookController < ApplicationController

  def register_api
    res = {'message' => '本棚に2冊登録しました', 'books' => ['book1', 'book2']}
    render :json => res
  end

end
