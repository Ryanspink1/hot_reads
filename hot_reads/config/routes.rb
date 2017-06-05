Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "*all" => "application#cors_preflight_check", :constraints => { :method => "OPTIONS" }
end
