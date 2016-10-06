class ApitestController < ApplicationController
  def index
    personal = {'name' => 'biblio', 'address' => 'Hyogo'}

    render :json => personal
  end
end
