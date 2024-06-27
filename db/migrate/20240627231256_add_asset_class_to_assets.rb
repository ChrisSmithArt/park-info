class AddAssetClassToAssets < ActiveRecord::Migration[7.1]
  def change
    add_reference :assets, :asset_category, foreign_key: true
  end
end
