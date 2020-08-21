Rails.application.routes.draw do
  resources :comments
  resources :add_picture_to_boards
  resources :pictures
  resources :visionboards
  resources :users

  #get "/comments", to: "comments#create"
  post "/pictures/:id/comments", to: "pictures#showcomments"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
