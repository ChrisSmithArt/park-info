class RemoveStringFromParks < ActiveRecord::Migration[7.1]
  def change
    remove_column :parks, :string, :string
  end
end
