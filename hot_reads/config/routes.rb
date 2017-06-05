Rails.application.routes.draw do
  root to: "toplinks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "*all" => "application#cors_preflight_check", :constraints => { :method => "OPTIONS" }

  resources :toplinks, only: [:index]

  namespace :api do
    namespace :v1 do
      # post "*all" => "application#cors_preflight_check", :constraints => { :method => "OPTIONS" }
      resources :links, only: [:create, :update]
      resources :toplinks, only: [:index]
    end
  end
end
