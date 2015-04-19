Rails.application.routes.draw do
  namespace :api do   
     namespace :v1 do 
      get '/deities' => 'deities#index'
      get '/deities/:id' => 'deities#show', :as => :deity
      post '/deities' => 'deities#create'
     end 
  end   
  get '/page' => 'pages#index'
end
