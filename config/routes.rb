Rails.application.routes.draw do
  root to: "articles#index" # トップページを articles#index に設定
  get "/mypage", to: "mypage#show"
  devise_for :users # ユーザー認証のルーティングを生成
  resources :articles       # Article の CRUD ルーティング
  resources :sample_articles # SampleArticle の CRUD ルーティング

  get "up" => "rails/health#show", as: :rails_health_check

  # Render dynamic PWA files from app/views/pwa/* (remember to link manifest in application.html.erb)
  # get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
  # get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
end
