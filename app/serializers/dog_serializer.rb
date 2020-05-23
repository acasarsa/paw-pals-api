class DogSerializer 
    include FastJsonapi::ObjectSerializer


    attributes :name, :followers, :followees

end