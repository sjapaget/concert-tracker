class Genre < ActiveRecord::Base
  has_many :artists

  validates :name, presence: true
  validates :name, uniqueness: true
end
