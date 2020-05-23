class Dog < ApplicationRecord
has_many :attendees, dependent: :destroy
has_many :events, through: :attendees

has_many :active_follows, foreign_key: :follower_id, class_name: 'Follow'
has_many :followees, through: :active_follows

has_many :being_followed, foreign_key: :followee_id, class_name: 'Follow'
has_many :followers, through: :being_followed

end
