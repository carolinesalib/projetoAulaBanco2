Rails.application.routes.draw do
  root 'index#index'

  resources :index
  resources :usuarios
  resources :posts
  resources :pets
  resources :localizacaos
  resources :enderecos
  resources :bairros
  resources :cidades
  resources :estados
  resources :pais
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
