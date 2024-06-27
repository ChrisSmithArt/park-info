class AddParkLocationToParks < ActiveRecord::Migration[7.1]
  def change
    add_column :parks, :park_location, :string
  end
end
