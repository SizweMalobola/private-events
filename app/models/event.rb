class Event < ApplicationRecord
    belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
    has_rich_text :description
    has_many :event_attendances
    has_many :attendees, through: :event_attendances, source: :attendee
    has_one_attached :event_image
end
