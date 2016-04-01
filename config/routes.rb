Rails.application.routes.draw do

  resources :restaurants do
    resources :foods
  end

end
