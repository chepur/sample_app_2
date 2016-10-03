class SimTypesController < ApplicationController

  def index
    @sim_types = SimType.all.order('created_at DESC')
  end

  def show
    @sim_type = SimType.find(params[:id])
  end

  def new
    @sim_type = SimType.new
  end

  def edit
    @sim_type = SimType.find(params[:id])
  end

  def create
    @sim_type = SimType.new(sim_type_params)
    if @sim_type.save
      flash[:success] = "Sim type was created!"
      redirect_to sim_type_path(@sim_type)
    else
      render 'new'
    end
  end

  def update
    @sim_type = SimType.find(params[:id])

    if @sim_type.update(sim_type_params)
      redirect_to sim_type_path(@sim_type)
      flash[:success] = "Sim type was updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @sim_type = SimType.find(params[:id])
    @sim_type.destroy

    redirect_to sim_types_path
    flash[:danger] = "Sim type was deleted!"
  end


  private

  def sim_type_params
    params.require(:sim_type).permit(:kind, :tariff, :active)
  end
end
