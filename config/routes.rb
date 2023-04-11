Rails.application.routes.draw do
  resources :movies
  resources :appearance_theatricals
  resources :appearance_extendeds
  resources :actors
  resources :weapons
  resources :cultures
  resources :eras
  resources :deaths
  resources :births
  resources :pronouns
  resources :genders
  resources :titles
  resources :nicknames
  resources :movie_characters

  root "movie_characters#index"
end
