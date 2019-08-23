Rails.application.routes.draw do
get '/random/', to: 'v1/animals#random_animal'
  namespace :v1 do
    resources :animals
  end
end
