Rails.application.routes.draw do
  devise_for :students
  devise_for :teachers
  root 'home#index'
  resources :teachers, only: [:show]
  resources :events, only: [:new, :destroy]
  post '/create', to: 'events#create', as: 'create'
  post '/events/:id/edit', to: 'events#edit', as: 'edit'
  patch '/events/:id', to: 'events#update', as: 'update'
  patch '/delete', to: 'events#delete', as: 'delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
