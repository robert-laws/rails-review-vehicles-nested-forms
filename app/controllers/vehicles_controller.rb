class VehiclesController < ApplicationController
  def index
    @owners = Owner.all

    if !params[:owner].blank?
      @vehicles = Vehicle.by_owner(params[:owner])
    else
      @vehicles = Vehicle.all
    end
  end

  def show
    @vehicle = Vehicle.find(params[:id])
  end
end
