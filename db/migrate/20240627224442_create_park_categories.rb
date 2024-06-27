class CreateParkCategories < ActiveRecord::Migration[7.1]
  def change
    create_table :park_categories do |t|
      t.string :park_category

      t.timestamps
    end
  end
end
