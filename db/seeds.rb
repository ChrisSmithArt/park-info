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
park_csv = Rails.root.join('db/Parks_and_Open_Space_20240626.csv')
park_data = File.read(park_csv)
parks = CSV.parse(park_data, headers: true, encoding: 'utf-8')

parks.each do |park|
  Park.create(
    park_id: park['Park ID'].to_i,
    park_name: park['Park Name'],
    park_description: park['Location Description'],
    park_neighbourhood: park['Neighbourhood'],
    park_category: park['Park Category'],
    total_area: park['Total Area in Hectares'].to_d,
    park_location: park['Location'],
  )
end

# parkasset_csv = Rails.root.join('db/Park_Asset_Inventory_20240626.csv')
# parkasset_data = File.read(parkasset_csv)
# parkassets = CSV.parse(parkasset_data, headers: true, encoding: 'utf-8')

# parkassets.each do |parkasset|
#   ParkAsset.create(
#     id: parkasset['Asset ID'].to_i,
#     park_id: parkasset['Park ID'].to_i,
#     assetclass: parkasset['Asset Class'],
#     assetsize: parkasset['Asset Size'],
#     assettype: parkasset['Asset Type'],
#   )
# end
