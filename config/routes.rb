Rails.application.routes.draw do
  resources :users
  get '/' => 'home#top'
end
