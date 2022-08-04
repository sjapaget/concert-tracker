class Venue < ActiveRecord::Base
  has_many :events
  has_many :artists, through: :events

  validates :name, uniqueness: true
  validates :name, presence: true
  validates :postcode, presence: true
  validates :street_address, presence: true
  validates :street_address, presence: true
end
