class Event < ApplicationRecord
    belongs_to :creator, class_name: 'User', foreign_key: 'user_id'
    has_rich_text :description
    has_many :event_attendances
    has_many :attendees, through: :event_attendances, source: :attendee
    has_one_attached :event_image
    validates :title, presence: true, length: {minimum: 8}
    validates :description, presence: true, length: {maximum: 500}
    validates :event_image, presence: true
    validates :starting_date, presence: true
    validates :ending_date, presence: true
    validates :starting_time, presence: true
    validates :ending_time, presence: true
    validates :location, presence: true, length: {minimum: 8}
    validates :user_id, presence: true
end
