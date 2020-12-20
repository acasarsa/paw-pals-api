class Follow < ApplicationRecord
    belongs_to :follower, class_name: 'Dog'
    belongs_to :followee, class_name: 'Dog'
end
