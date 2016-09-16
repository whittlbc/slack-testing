Rails.application.routes.draw do

  get '/' => 'home#index'
  get '/slack/oauth' => 'slack#oauth'
  post '/slack/message_action' => 'slack#message_action'

end