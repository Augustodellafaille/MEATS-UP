Rails.application.routes.draw do
  # get 'dishes/index'

  # get 'dishes/show'

  # get 'dishes/new'

  # get 'dishes/edit'

  # get 'dishes/create'

  # get 'dishes/update'

  # get 'dishes/destroy'
  resources :dinners
  resources :places

  # get 'places/index'

  # get 'places/show'

  # get 'places/new'

  # get 'places/edit'

  # get 'places/create'

  # get 'places/update'

  # get 'places/destroy'
  get 'users/show'
  get 'users/index'
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
