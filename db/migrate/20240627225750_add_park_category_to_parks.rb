class AddParkCategoryToParks < ActiveRecord::Migration[7.1]
  def change
    add_reference :parks, :park_category, foreign_key: true
  end
end
