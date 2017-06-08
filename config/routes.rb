Rails.application.routes.draw do
  get 'exemplos/index'

  get 'about/index'

  get 'diagrama/index'

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

  resources :consulta_banco do
    get 'consultar', on: :new
  end
end
