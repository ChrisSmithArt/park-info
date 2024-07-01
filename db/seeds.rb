# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "csv"

# Asset.destroy_all

# ParkCategory.destroy_all
# AssetCategory.destroy_all
# Park.destroy_all



# park_csv = Rails.root.join('db/Parks_and_Open_Space_20240626.csv')
# park_data = File.read(park_csv)
# parks = CSV.parse(park_data, headers: true, encoding: 'utf-8')

# parks.each do |park|
#   category_name = park['Park Category']
#   category = ParkCategory.find_or_create_by(park_category: category_name)

#   Park.create(
#     park_id: park['Park ID'].to_i,
#     park_name: park['Park Name'],
#     park_description: park['Location Description'],
#     park_neighbourhood: park['Neighbourhood'],
#     total_area: park['Total Area in Hectares'].to_d,
#     park_location: park['Location'],
#     park_category: category,
#   )
# end

# assets_csv = Rails.root.join('db/Park_Asset_Inventory_20240626.csv')
# assets_data = File.read(assets_csv)
# assets = CSV.parse(assets_data, headers: true, encoding: 'utf-8')

# assets.each do |asset|
#   category_name = asset['Asset Class']
#   category = AssetCategory.find_or_create_by(asset_class: category_name)
#   Asset.create!(
#     asset_id: asset['Asset ID'].to_i,
#     park_id: asset['Park ID'].to_i,
#     asset_size: asset['Asset Size'],
#     asset_type: asset['Asset Type'],
#     asset_category_id: category.id,
#   )
# end

AssetCategory.all.each do |category|
  Asset.where(asset_category_id: category.asset_category_id).each do |asset|
    asset.asset_class = category.asset_class
    asset.save
  end
end
