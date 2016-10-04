class SimTarifsController < ApplicationController

  def index
    @sim_tars = SimTarif.all.order('created_at DESC')
  end

  # def show
  #   @sim_tar = SimTarif.find(params[:id])
  # end

  def new
    @sim_tar = SimTarif.new
  end

  # def edit
  #   @sim_tar = SimTarif.find(params[:id])
  # end
  #
  # def create
  #   @sim_tar = SimTarif.new(sim_type_params)
  #   if @sim_tar.save
  #     flash[:success] = "Sim tariff was created!"
  #     redirect_to sim_tarif_path(@sim_tar)
  #   else
  #     render 'new'
  #   end
  # end
  #
  # def update
  #   @sim_tar = SimType.find(params[:id])
  #
  #   if @sim_tar.update(sim_tarif_path)
  #     redirect_to sim_tarif_path(@sim_tar)
  #     flash[:success] = "Sim tariff was updated!"
  #   else
  #     render 'edit'
  #   end
  # end
  #
  # def destroy
  #   @sim_tar = SimTarif.find(params[:id])
  #   @sim_tar.destroy
  #
  #   redirect_to sim_tarifs_path
  #   flash[:danger] = "Sim tariff was deleted!"
  # end


  private

  def sim_tarif_params
    params.require(:sim_tarifs).permit(:tar_name, :active)
  end
end
