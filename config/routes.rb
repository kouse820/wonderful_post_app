Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index' #追記
  resources :articles
  resources :sample_articles
end
