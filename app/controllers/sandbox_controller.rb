class SandboxController < ApplicationController
  def sample_www
  end

  def sample_api
    res = {'header' => 'hogehoge', 'body' => 'ほげほげ'}
    render :json => res
  end
end
