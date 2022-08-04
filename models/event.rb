class Event < ActiveRecord::Base
  belongs_to :artist
  belongs_to :venue
  has_one :genre, through: :artists

  validates :name, presence: true
  validates :url, presence: true
  validates :date, presence: true
end
