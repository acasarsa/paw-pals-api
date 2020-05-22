class Api::V1::DogsController < ApplicationController

    # show, index

    def show
        dog = Dog.find(params[:id])
        render json: dog
    end

    def index
        dogs = Dog.all
        render json: dogs
    end

    def create 
        dog = Dog.create(dog_params)
    end

    private

    params.require(:dog).permit(:name, :breed, :tagline, :age, :gender, :size, :image, :description)
end


t.string "name"
    t.string "breed"
    t.string "tagline"
    t.string "age"
    t.string "gender"
    t.string "size"
    t.string "image"
    t.string "description"