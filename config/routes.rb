Rails.application.routes.draw do

    namespace :api do 
      namespace :v1 do
        resources :meet_ups, except: [:index]
        resources :dog_user_pairs, only: [:show, :create, :destroy]
        resources :dogs, only: [:show, :index]
        resources :users, except: [:index, :destroy]
      end
    end
  
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
