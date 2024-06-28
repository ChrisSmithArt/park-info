class AddIndexToParkIdInAssets < ActiveRecord::Migration[7.1]
  def change
    add_index :assets, :park_id
  end
end
