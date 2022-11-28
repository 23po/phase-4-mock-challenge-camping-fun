Rails.application.routes.draw do
  
  resources :campers do
    resources :activities
  end
  
  resources :signups
  resources :activities
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
