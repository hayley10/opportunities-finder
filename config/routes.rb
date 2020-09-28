Rails.application.routes.draw do
  # root 'main_pages/home'
  get 'main_pages/home'
  get 'main_pages/list'
  get 'main_pages/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
