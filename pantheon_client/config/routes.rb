Rails.application.routes.draw do
  get '/deities' => 'deities#index'
  get '/deities/new' => 'deities#new'
  get '/deities/:id' => 'deities#show', :as => :deity
  post '/deities' => 'deities#create'
end
