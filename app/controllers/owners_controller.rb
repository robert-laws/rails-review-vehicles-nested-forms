class OwnersController < ApplicationController
  def index
    @owners = Owner.all
    @number = 2
  end

  def show
    @owner = Owner.find(params[:id])
  end

  def new
    @owner = Owner.new
    number = params["number_choice"].to_i
    # number_param = params[:number].to_i
    # number = number_param == 0 ? 1 : number_param
    @vehicles = number.times { @owner.vehicles.build }
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      redirect_to owner_path(@owner), notice: "Your record was created"
    else
      render :new
    end
  end

  def edit
    @owner = Owner.find(params[:id])
    @vehicles = @owner.vehicles
  end

  def update
    @owner = Owner.find(params[:id])
    if @owner.update(owner_params)
      redirect_to owner_path(@owner), notice: "Your record was updated"
    else
      render :edit
    end
  end

  def destroy
    Owner.find(params[:id]).destroy
    redirect_to owners_path
  end

  private

  def owner_params
    params.require(:owner).permit(:name, :age, :experience, vehicles_attributes: [:id, :name, :model, :model_year, :pass_safety_test])
  end
end