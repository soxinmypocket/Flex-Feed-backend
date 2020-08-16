Rails.application.routes.draw do
  resources :add_picture_to_boards
  resources :pictures
  resources :visionboards
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
