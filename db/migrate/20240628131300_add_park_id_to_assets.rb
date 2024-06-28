class AddParkIdToAssets < ActiveRecord::Migration[7.1]
  def change
    add_column :assets, :park_id, :integer
  end
end
