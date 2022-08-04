class Artist < ActiveRecord::Base
  has_many :events
  belongs_to :genre

  validates :name, presence: true
  validates :name, uniqueness: true
end
