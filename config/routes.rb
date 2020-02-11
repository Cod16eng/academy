Rails.application.routes.draw do

  resources :posts
  root 'pages#home'
  get 'academy' => 'pages#academy'
  get 'corsi' => 'pages#corsi'
  get 'notizie' => 'pages#notizie'
  get 'supporto' => 'pages#supporto'
  get 'contatti' => 'pages#contatti'
  resources :users

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
