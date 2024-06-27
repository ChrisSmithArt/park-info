class ParksController < ApplicationController
  def index
    @parks = Park.all.page params[:page]
  end
  def show
    @parks = Park.find(params[:id])
  end
end
