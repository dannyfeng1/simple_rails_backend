Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :courses, only: [:create, :index, :show, :update, :destroy]
  # authentication would require a user sign in or some type of password for admin privileges
end
