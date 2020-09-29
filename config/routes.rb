Rails.application.routes.draw do
  get 'opportunities/new'
  root 'main_pages#home'
  get '/list', to: 'main_pages#list'
  get '/new',  to: 'opportunities#new'
  resources :opportunities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
