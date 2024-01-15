class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
  has_many :users, through: :attendances, source: :attendee
  has_many :attendances, foreign_key: 'event_id'
end
