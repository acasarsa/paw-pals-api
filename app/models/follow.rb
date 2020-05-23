class Follow < ApplicationRecord
    belongs_to :follower, class_name: 'Dog', dependent: :destroy
    belongs_to :followee, class_name: 'Dog', dependent: :destroy
end
