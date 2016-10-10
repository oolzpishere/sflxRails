Rails.application.routes.draw do

  get "guanli" => "cookies#new", :as => "guanli"
  get "logout" => "cookies#destroy", :as => "logout"
  get "zhuce" => "users#new", :as => "zhuce"

  root "pages#index"
 
  resources :users
  resources :cookies
  resources :pages

  namespace :admin do
    resources :pages
  end

  namespace :admin do
    resources :galleries
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
