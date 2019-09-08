Rails.application.routes.draw do
  root 'grams#index'
  get '/new' => 'grams#new'
end
