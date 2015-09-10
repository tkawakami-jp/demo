Rails.application.routes.draw do
  root 'home#top'
  get 'video' => 'video#show'
  get 'audio' => 'audio#show'
end
