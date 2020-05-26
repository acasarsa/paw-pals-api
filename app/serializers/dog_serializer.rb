class DogSerializer 
    include FastJsonapi::ObjectSerializer


    attributes :id, :name, :breed, :status, :age, :gender, :size, :image, :description, :favorite_toy, :human, :username, :password, :followers, :followees, except: [:created_at, :updated_at]

end

# t.string "name"
# t.string "breed"
# t.text "status"
# t.string "age"
# t.string "gender"
# t.string "size"
# t.string "image"
# t.text "description"
# t.text "favorite_toy"
# t.string "human"
# t.string "username"
# t.string "password"