class AssetCategory < ApplicationRecord
  has_many :assets

  validates :asset_class, presence:true
end
