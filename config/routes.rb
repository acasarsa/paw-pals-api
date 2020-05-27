Rails.application.routes.draw do

    namespace :api do 
      namespace :v1 do
        resources :dogs, only: [:show, :index, :create, :update]
        get 'dogs/login/:username', to: 'dogs#login'
        resources :follows, only: [:show, :create, :index, :destroy]
        resources :events, only: [:show, :create, :update, :destroy, :index]
        resources :attendees, only: [:show, :create, :index, :destroy]

      end
    end
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
