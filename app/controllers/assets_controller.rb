class AssetsController < ApplicationController
  def index
    @assetCategories = AssetCategory.all.page params[:page]
  end
  def show
    @assetCategories = AssetCategory.find(params[:id])
    @parks = Park.all
    @assets = Asset.all
  end
end
