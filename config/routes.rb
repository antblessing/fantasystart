Rails.application.routes.draw do
  resources :matchups
  get 'users/show'

  devise_for :users
  resources :users, :only => [:show]
  get 'welcome/index'

  get 'welcome/about'

  root 'welcome#index'

end
