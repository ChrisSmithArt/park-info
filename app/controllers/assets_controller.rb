class AssetsController < ApplicationController
  def index
    @assets = Asset.all
    @assetCategories = AssetCategory.all
    @parks = Park.all

    @q = Asset.ransack (params[:q])
    @assetQ = @q.result(distinct: true)

    @assetQ = @assetQ.order('asset_class').page(params[:page]).per(15)
  end
  def show
    @assets = Asset.find(params[:id])
    @parks = Park.where(park_id: @assets.park_id).first
  end
end
