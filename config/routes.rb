Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  root "lists#index"
  get "lists", to: "lists#index"
  get "lists/new", to: "lists#new"
  post "lists", to: "lists#create"
  get "lists/:id", to: "lists#show", as: :list
  patch "movies/:id/bookmark", to: "movies#bookmark", as: :bookmark_movie
  delete "movies/:id/bookmark", to: "movies#unbookmark", as: :unbookmark_movie
end
