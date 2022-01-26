Rails.application.routes.draw do
  resources :quadernis
  resources :uploads
  resources :speakers
  resources :categories
  resources :webinars
  get 'archivio' => 'webinars#archivio'
  resources :posts

  root 'pages#home'
  get 'academy' => 'pages#academy'
  get 'formazione' => 'pages#formazione'
  get 'notizie' => 'pages#notizie'
  get 'supporto' => 'pages#supporto'
  get 'contatti' => 'pages#contatti'
  post 'lavora' => 'pages#lavora'
  resources :users

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
