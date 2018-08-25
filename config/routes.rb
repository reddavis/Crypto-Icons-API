Rails.application.routes.draw do
  get '/api/:style/:currency/:size', to: 'icons#show'
end
