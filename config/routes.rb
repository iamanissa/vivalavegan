Rails.application.routes.draw do
  root 'main#index'
  get 'foods/all'
  resources :restaurants do
    resources :foods
  end

end
