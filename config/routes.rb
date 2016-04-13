Rails.application.routes.draw do
  
  namespace :admin do
    resources :users
    resources :bands
    resources :events
    resources :venues

    root to: "events#index"
  end

  get "events/list" => 'events#list'
  get "events/details/:date" => 'events#details'
  devise_for :users
  root to: "events#list"
  get "user/logout" => 'users#logout'
end
