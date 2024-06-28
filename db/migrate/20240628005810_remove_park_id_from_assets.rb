class RemoveParkIdFromAssets < ActiveRecord::Migration[7.1]
  def change
    remove_column :assets, :park_id, :integer
  end
end
