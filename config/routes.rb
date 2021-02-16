Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'help', to:'pages#help'
  get 'about', to:'pages#about'
  get 'contact', to:'pages#contact'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :events, only: [:new, :create, :index, :show]

  get 'events/:event_id/select_meals', to: 'events#select_meals', as: 'event_select_meals'


end
