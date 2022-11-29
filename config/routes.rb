Rails.application.routes.draw do
 
  resources :campers, only: [:index, :show] do 
    resources :activities, only: [:index, :show]
  end
  
  resources :signups
  resources :activities
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
