Rails.application.routes.draw do
  devise_for :students
  devise_for :teachers
  root 'home#index'
  resources :teachers, only: [:show]
  resources :events, only: [:new, :destroy]
  post '/create', to: 'events#create#', as: 'create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
