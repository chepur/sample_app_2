class OrdersController < ApplicationController

  def index
    @orders = Order.all
    @orders = Order.all.order('created_at DESC').paginate(page: params[:page], per_page: 20)
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
    @order.simcards.build
  end

  def edit
    @order = Order.find(params[:id])
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      flash[:success] = "Order was created!"
      redirect_to order_path(@order)
    else
      render 'new'
    end
  end

  def update
    @order = Order.find(params[:id])

    if @order.update(order_params)
      redirect_to order_path(@order)
      flash[:success] = "Order was updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy

    redirect_to orders_path
    flash[:danger] = "Order was deleted!"
  end

  private

  def order_params
    params.require(:order).permit(:name, :surname, :tz, :phone, simcards_attributes: [:id, :sim_type, :tariff, :_destroy])
  end

end
