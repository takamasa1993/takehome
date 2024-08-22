Rails.application.routes.draw do
  root "home#index"  # トップページをhome#indexに設定

  # postsに関するすべてのルーティングをまとめる
  resources :posts

  # commentsはpostsにネストさせたままにする
  resources :posts do
    resources :comments, only: [:create, :destroy]
  end

  # Health check
  get "up" => "rails/health#show", as: :rails_health_check

  # PWA関連の設定
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest
end