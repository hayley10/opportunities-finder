Rails.application.routes.draw do
  root 'main_pages#home'
  get '/new',  to: 'opportunities#new'
  get '/edit', to: 'opportunities#edit'
  get '/list', to: 'districts#show'
  resources :opportunities
  resources :districts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
