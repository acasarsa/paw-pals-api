class MeetUp < ApplicationRecord
    belongs_to :first_dog_user_pair, class_name: "DogUserPair"
    belongs_to :second_dog_user_pair, class_name: "DogUserPair"
end
