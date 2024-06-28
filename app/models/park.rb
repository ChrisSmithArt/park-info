class Park < ApplicationRecord
  has_many :assets
  belongs_to :park_category

  validates :park_name, :park_id, :park_description, :park_neighbourhood, :total_area, :park_category, presence: true
end
