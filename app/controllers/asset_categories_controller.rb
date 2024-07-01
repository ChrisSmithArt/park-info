class AssetCategoriesController < ApplicationController
  def index
    @assets = Asset.all
    @assetCategories = AssetCategory.all
    @parks = Park.all
  end
  def show
    @assetCategories = AssetCategory.find(params[:id])
    @assets = Asset.all
    @parks = Park.all
  end
end
