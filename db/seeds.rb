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
# park_csv = Rails.root.join('db/Parks_and_Open_Space_20240626.csv')
# park_data = File.read(park_csv)
# parks = CSV.parse(park_data, headers: true, encoding: 'utf-8')

# parks.each do |park|
#   Park.create(
#     park_id: park['Park ID'].to_i,
#     park_name: park['Park Name'],
#     park_description: park['Location Description'],
#     park_neighbourhood: park['Neighbourhood'],
#     park_category: park['Park Category'],
#     total_area: park['Total Area in Hectares'].to_d,
#     park_location: park['Location'],
#   )
# end

# assets_csv = Rails.root.join('db/Park_Asset_Inventory_20240626.csv')
# assets_data = File.read(assets_csv)
# assets = CSV.parse(assets_data, headers: true, encoding: 'utf-8')

# assets.each do |asset|
#   Asset.create(
#     asset_id: asset['Asset ID'].to_i,
#     park_id: asset['Park ID'].to_i,
#     asset_class: asset['Asset Class'],
#     asset_size: asset['Asset Size'],
#     asset_type: asset['Asset Type'],
#   )
# end
