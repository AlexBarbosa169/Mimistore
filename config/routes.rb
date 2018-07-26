Rails.application.routes.draw do
  resources :pedidos
  resources :products
  get 'home/index'    
  root 'home#index'  
  get 'pedidos/:pedidoid/adicionar/:productid', to: 'pedidos#adicionar', as: 'adicionar_produtos'
  get 'pedidos/:pedidoid/remover/:productid', to: 'pedidos#remover', as:  'remover_produtos'

  devise_for :admins
  devise_for :clients
  resources :clients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
