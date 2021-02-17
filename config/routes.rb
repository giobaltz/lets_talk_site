Rails.application.routes.draw do
  post '/auth/:provider/callback' => 'sessions#omniauth'
  devise_for :users

  resources :conversations do
    resources :messages
  end
  get '/posts/search', to: 'posts#search', as: 'search_post_path'

  resources :posts

  root 'conversations#index'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
