Rails.application.routes.draw do
  namespace :admin do
    resources :users
resources :bands
resources :events
resources :venues

    root to: "users#index"
  end

  get "events/list" => 'events#list'
  get "events/details/:date" => 'events#details'
  devise_for :users
  root to: "users#home"
end
