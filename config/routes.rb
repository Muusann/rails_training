Rails.application.routes.draw do
  resources :belongs
  resources :products
  resources :users
  get '/' => 'home#top'
end
