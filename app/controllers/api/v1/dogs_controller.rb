
class Api::V1::DogsController < ApplicationController
    
    def index
        dogs = Dog.all
        render json: DogSerializer.new(dogs)
    end

    def login
        dog = Dog.find_by(username: params[:username])
        render json: dog, except: [:created_at, :updated_at], include: [:followers, :followees ], status: 201
    end
    
    def show
        dog = Dog.find_by(id: params[:id])
        render json: dog, except: [:created_at, :updated_at], include: [:followers, :followees ], status: 201
    end
    
    


    def create 
        dog = Dog.find_or_create_by(dog_params)
        render json: dog, except: [:created_at, :updated_at], include: [:followers, :followees ], status: 201
    end

    def update
        dog = Dog.find(params[:id])
        dog.update(dog_params)
        render json: dog, except: [:created_at, :updated_at], include: [:followers, :followees ], status: 201
    end

    private

    def dog_params
        params.require(:dog).permit(:name, :breed, :status, :age, :gender, :size, :image, :description, :favorite_toy, :human, :username, :password)
    end
end

