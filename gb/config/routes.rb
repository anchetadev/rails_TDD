Rails.application.routes.draw do
  devise_for :users
  root 'grams#index'
  get '/new' => 'grams#new'
end
