Rails.application.routes.draw do
  get "events/list" => 'events#list'
  devise_for :users
  root to: "home#index"
end
