class CreateAssetCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :asset_categories do |t|
      t.string :asset_class

      t.timestamps
    end
  end
end
