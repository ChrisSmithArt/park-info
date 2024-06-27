class Asset < ApplicationRecord
  validates :asset_category_id, presence: true

  belongs_to :park
  belongs_to :asset_category
end
