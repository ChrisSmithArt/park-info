class Park < ApplicationRecord
  has_many :assets
  belongs_to :park_category
end
