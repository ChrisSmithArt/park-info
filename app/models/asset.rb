class Asset < ApplicationRecord
  belongs_to :park, foreign_key: 'park_id'
  belongs_to :asset_category, foreign_key: 'asset_category_id'

  validates :asset_category_id, :park_id, presence:true

  def self.ransackable_attributes(auth_object = nil)
    ["asset_category_id", "asset_class", "asset_id", "asset_size", "asset_type", "created_at", "id", "id_value", "park_id", "updated_at"]
  end
end
