Rails.application.routes.draw do
  resources :products
  resources :users
  get '/' => 'home#top'
end
