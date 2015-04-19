Rails.application.routes.draw do
   get '/fortune' => 'pages#fortune'
   get '/lottery' => 'pages#lottery'
   get '/home' => 'pages#home'
end
