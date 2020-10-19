Rails.application.routes.draw do
  root to: "posts#index"

  resources :posts
  match 'blobs/:signed_id/*filename', to: 'blobs#show', via: [:get, :post]
  delete 'attachments/:signed_id/*filename', to: 'attachments#destroy'
  resources :attachments, only: [:destroy], as: :destroy_attachment
end
