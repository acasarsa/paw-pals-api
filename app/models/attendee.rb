class Attendee < ApplicationRecord
  belongs_to :dog, dependent: :destroy
  belongs_to :event, dependent: :destroy
end
