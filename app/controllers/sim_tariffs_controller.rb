class SimTariffsController < ApplicationController

  def index
    @sim_tariffs = SimTariff.all.order('created_at DESC')
  end

  def show
    @sim_tariff = SimTariff.find(params[:id])
  end

  def new
    @sim_tariff = SimTariff.new
  end

  def edit
    @sim_tariff = SimTariff.find(params[:id])
  end

  def create
    @sim_tariff = SimTariff.new(sim_tariff_params)
    if @sim_tariff.save
      flash[:success] = "Sim tariff was created!"
      redirect_to sim_tariffs_path
    else
      render 'new'
    end
  end

  def update
    @sim_tariff = SimTariff.find(params[:id])

    if @sim_tariff.update(sim_tariff_params)
      redirect_to sim_tariffs_path
      flash[:success] = "Sim tariff was updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @sim_tariff = SimTariff.find(params[:id])
    @sim_tariff.destroy

    redirect_to sim_tariffs_path
    flash[:danger] = "Sim tariff was deleted!"
  end


  private

  def sim_tariff_params
    params.require(:sim_tariff).permit(:tariff, :active)
  end
end
