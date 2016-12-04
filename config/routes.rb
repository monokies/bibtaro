Rails.application.routes.draw do

  post 'return_book/return_api'

  # sandbox用のルート
  # 基本的にはrails generateで作成されるので、いじる必要なし。
  get 'sandbox/sample_www'
  get 'sandbox/sample_api'
  get 'sandbox/sample-www'
  get 'sandbox/sample-api'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
