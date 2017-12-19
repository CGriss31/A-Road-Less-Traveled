Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :posts

  get 'index' => 'practice#index'
  get 'about' => 'practice#about'

  get ':username' => 'posts#user_posts', as: 'user_posts' #package the params[:username] => 'Mojo'

  root 'posts#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
