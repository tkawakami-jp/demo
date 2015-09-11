Rails.application.routes.draw do
  
  root 'home#top'
  get 'rec_video' => 'video#show'
  get 'rec_audio' => 'audio#show'
  
  resources :images, only: [:index, :new, :create, :destroy]
  resources :audios, only: [:index, :create, :destroy]
end
