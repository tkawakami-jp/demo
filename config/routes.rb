Rails.application.routes.draw do
  
  root 'home#top'
  get 'video' => 'video#show'
  get 'audio' => 'audio#show'
  
  resources :images, only: [:index, :new, :create, :destroy]
end
