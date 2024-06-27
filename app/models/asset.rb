class Asset < ApplicationRecord
  belongs_to :park
  belongs_to :asset_category
end
