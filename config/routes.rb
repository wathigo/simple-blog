Rails.application.routes.draw do
  root to: "posts#index"

  resources :posts
  match 'blobs/:signed_id/*filename', to: 'blobs#show', via: [:get, :post]
end
