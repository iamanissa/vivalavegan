Rails.application.routes.draw do
  root 'restaurants#index'
  get 'restaurants/api'
  resources :restaurants do
    resources :foods
  end

end
