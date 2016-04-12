Rails.application.routes.draw do
  get "events/list" => 'events#list'
  get "events/details/:date" => 'events#details'
  devise_for :users
  root to: "users#home"
end
