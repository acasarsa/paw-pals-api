class DogUserPair < ApplicationRecord
  belongs_to :user
  belongs_to :dog

  has_many :quad1, class_name: "MeetUp", foreign_key: "first_dog_user_pair_id", dependent: :destroy
  has_many :second_dog_user_pairs, through: :quad1, source: :second_dog_user_pair

  has_many :quad2, class_name: "MeetUp", foreign_key: "second_dog_user_pair_id", dependent: :destroy
  has_many :first_dog_user_pairs, through: :quad2, source: :first_dog_user_pair
end
