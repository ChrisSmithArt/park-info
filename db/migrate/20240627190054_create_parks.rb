class CreateParks < ActiveRecord::Migration[7.1]
  def change
    create_table :parks do |t|
      t.integer :park_id
      t.string :park_name
      t.string :park_description
      t.string :park_neighbourhood
      t.string :string
      t.string :park_category
      t.decimal :total_area

      t.timestamps
    end
  end
end
