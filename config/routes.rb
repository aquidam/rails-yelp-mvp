Rails.application.routes.draw do
  root 'restaurants#index'
  get 'restaurants', to: 'restaurants#index', as: 'restaurants'
  get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  post 'restaurants', to: 'restaurants#create'
  get 'restaurants/:restaurant_id/reviews/new', to: 'reviews#new', as: 'new_restaurant_review'
  get 'restaurants/:restaurant_id/reviews', to: 'reviews#index', as: 'reviews'
  post 'restaurants/:restaurant_id/reviews', to: 'reviews#create', as: 'restaurant_reviews'
end
