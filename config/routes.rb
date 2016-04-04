Rails.application.routes.draw do
  root 'main#index'
  get 'restaurants/api'
  resources :restaurants do
    resources :foods
  end

end
