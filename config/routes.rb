Rails.application.routes.draw do
  get 'home/index'
  get 'read/:article_id', to: 'home#read', as: "read"
  post 'save_comment/:article_id', to: 'home#save_comment', as: "save_comment"
  
  resources :articles
  resources :users

  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
