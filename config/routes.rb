Rails.application.routes.draw do
  resources :instaas
  root "instaas#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
