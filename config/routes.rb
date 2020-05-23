Rails.application.routes.draw do

    namespace :api do 
      namespace :v1 do
        resources :dogs, only: [:show, :index]
        resources :events, only: [:show, :create, :update, :destroy, :index]
        resources :follows, only: [:show, :create, :destroy]
        resources :attendees, only: [:show, :index, :create, :destroy]

      end
    end
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
