Rails.application.routes.draw do
  mount_devise_token_auth_for 'User', at: 'auth'
  root 'main#index'
  get 'foods/all'
  
  resources :restaurants do
    resources :foods
  end
end
