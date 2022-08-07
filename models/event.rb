class Event < ActiveRecord::Base
  belongs_to :artist
  belongs_to :venue
  has_one :genre, through: :artist

  validates :date, presence: true
end
