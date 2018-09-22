Rails.application.routes.draw do
  resources :cards
  root to: redirect("/cards")
end
