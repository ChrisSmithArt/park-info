class Asset < ApplicationRecord
  belongs_to :park, foreign_key: 'park_id'
  belongs_to :asset_category, foreign_key: 'asset_category_id'

  validates :asset_category_id, :park_id, presence:true
end
