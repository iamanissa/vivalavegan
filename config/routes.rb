Rails.application.routes.draw do
  root 'main#index'
  resources :restaurants do
    resources :foods
  end
end
