class Park < ApplicationRecord
  has_many :assets, foreign_key: 'park_id'
  belongs_to :park_category

  validates :park_name, :park_id, :park_description, :park_neighbourhood, :total_area, :park_category, presence: true

  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "id", "id_value", "park_category", "park_category_id", "park_description", "park_id", "park_location", "park_name", "park_neighbourhood", "total_area", "updated_at"]
  end
end
