Rails.application.routes.draw do

  namespace :v1 do
    resources :animals
  end
end
