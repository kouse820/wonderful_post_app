Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  get 'mypage', to: 'mypage#show'
  resources :articles
end
