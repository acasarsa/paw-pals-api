class Dog < ApplicationRecord
has_many :dog_user_pairs, dependent: :destroy
has_many :user, through: :dog_user_pairs
end
