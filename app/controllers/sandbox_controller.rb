class SandboxController < ApplicationController
  def sample_www
      @sampledbs = Sampledb.all
  end

  def sample_api
    res = {'header' => 'hogehoge', 'body' => 'ほげほげ'}
    render :json => res
  end
end
