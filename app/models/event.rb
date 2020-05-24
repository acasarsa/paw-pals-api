class Event < ApplicationRecord
    has_many :attendees, dependent: :destroy
    has_many :dogs, through: :attendees
end
