class CreateAssets < ActiveRecord::Migration[7.1]
  def change
    create_table :assets do |t|
      t.integer :asset_id
      t.string :asset_class
      t.string :asset_type
      t.string :asset_size
      t.integer :park_id
      t.references :park, null: false, foreign_key: true

      t.timestamps
    end
  end
end
