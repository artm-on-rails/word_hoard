Rails.application.routes.draw do
  resources :audio_clips
  resources :cards
  root to: redirect("/cards")
end
