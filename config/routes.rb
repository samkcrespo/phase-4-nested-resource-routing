Rails.application.routes.draw do
  resources :dog_houses, only: [:show] do
    # nested resources for reviews of dog_house
    resources :reviews, only: [:show, :index]
  end
  
  resources :reviews, only: [:show, :index, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
