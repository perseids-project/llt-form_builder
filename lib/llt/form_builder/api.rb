require 'sinatra/base'
require 'sinatra/respond_with'
require 'sinatra/json'
require 'json'
require 'llt/form_builder'

class Api < Sinatra::Base
  register Sinatra::RespondWith

  post '/generate' do
    request_json = JSON.parse(request.body.read)

    json(request_json);
  end
end
