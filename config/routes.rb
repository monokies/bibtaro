Rails.application.routes.draw do
  get 'sandbox/sample_www'

  get 'sandbox/sample_api'

  get 'sandbox/sample-www'

  get 'sandbox/sample-api'

  get 'apitest/index'

  get 'hello/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
