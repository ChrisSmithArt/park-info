class Park < ApplicationRecord
  validates :park_name, :park_id, :park_description, :park_neighbourhood, :total_area, presence: true

  has_many :assets
  belongs_to :park_category
end
