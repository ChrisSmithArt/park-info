class ParksController < ApplicationController
  def index
    @q = Park.ransack (params[:q])
    @parkQ = @q.result(distinct: true)

    @parkQ = @parkQ.order('park_name').page(params[:page]).per(15)
  end
  def show
    @parks = Park.find(params[:id])
    @assets = Asset.all
  end
end
