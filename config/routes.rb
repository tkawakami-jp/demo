Rails.application.routes.draw do
  root 'home#top'
  get 'videos' => 'videos#show'
  get 'audios' => 'audios#show'
end
