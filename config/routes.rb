Rails.application.routes.draw do
  root :to => "pages#home"

  get 'pages/home'
  get 'pages/french'
  get 'pages/russian'
  get 'pages/yoda'

  get 'pages/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
