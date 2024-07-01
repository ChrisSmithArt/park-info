class AssetsController < ApplicationController
  def index
    @assets = Asset.all
    @assetCategories = AssetCategory.all
    @parks = Park.all
  end
  def show
    @assets = Asset.find(params[:asset_category_id])

  end
end
