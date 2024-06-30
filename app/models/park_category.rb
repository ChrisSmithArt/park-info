class ParkCategory < ApplicationRecord
  has_many :parks

  validates :park_category, presence:true, uniqueness: true
end
