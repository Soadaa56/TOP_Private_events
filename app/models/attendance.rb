class Attendance < ApplicationRecord
  belongs_to :attendee, class_name: 'User', foreign_key: 'user_id'
  belongs_to :attended_event, class_name: 'Event', foreign_key: 'event_id'

  validates_uniqueness_of :user_id, scope: :event_id
end
