Rails.application.routes.draw do
  root 'api/v1/products#index'

  resources :products

  get 'api/v1/products' => 'api/v1/products/index'
end
