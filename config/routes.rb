Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#welcome'
  get 'home', to: 'pages#home'
  get 'help', to:'pages#help'
  get 'about', to:'pages#about'
  get 'contact', to:'pages#contact'
  get 'recipes', to:'pages#recipes'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :events, only: [:new, :create, :index, :show] do
    resources :meals, only: [:create, :destroy]
  end

  delete 'events/:event_id/meals', to: 'meals#destroy_all', as: 'event_meals_destroy_all'
  get 'events/:id/list_ingredients', to:'events#list_ingredients', as: 'ingredient_list'
  get 'events/:id/select_meals', to: 'events#select_meals', as: 'event_select_meals'
  get 'events/:id/list_recipes', to:'events#list_recipes', as: 'recipes_list'

end
