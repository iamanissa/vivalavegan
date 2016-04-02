Rails.application.routes.draw do

  get 'restaurants/api'
  resources :restaurants do
    resources :foods
  end

end
