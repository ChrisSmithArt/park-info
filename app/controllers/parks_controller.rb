class ParksController < ApplicationController
  def index
    # @parks = Park.all.page params[:page]
    # @q = Park.ransack (params[:q])
    # @parkQ = @q.result(distinct: true)

    @q = Park.ransack (params[:q])
    @parkQ = @q.result(distinct: true)

    @parkQ = @parkQ.order('park_name').page(params[:page]).per(12)
  end
  def show
    @parks = Park.find(params[:id])
    @assets = Asset.all
  end
end
