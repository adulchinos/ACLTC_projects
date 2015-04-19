Rails.application.routes.draw do
get '/user-message' => 'pages#number_guess'
get 'user-message2/:message' => 'pages#number_guess2'
get '/message-form' => 'pages#number_guess3'
post '/submit-number' => 'pages#submit'
end
