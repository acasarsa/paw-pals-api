class DogSerializer 
    include FastJsonapi::ObjectSerializer


    attributes :id, :name, :breed, :status, :age, :gender, :size, :image, :description, :favorite_toy, :human, :username, :password, :followers, :followees, except: [:created_at, :updated_at]

end
