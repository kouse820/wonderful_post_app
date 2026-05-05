Rails.application.routes.draw do
  root to: 'articles#index' #追記
  resources :articles
  resources :sample_articles
end
