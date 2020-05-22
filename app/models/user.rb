class User < ApplicationRecord
    has_many :dog_user_pairs, dependent: :destroy
    has_many :dogs, through: :dog_user_pairs
end
