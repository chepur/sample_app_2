class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def create
    @order = Order.create(order_params)

    redirect_to order_path(@order)
  end

  def new
  end

  def edit
  end

  def show
    @order = Order.find(params[:id])
  end

  def update
  end

  def destroy
  end

  private

  def order_params
    params.require(:order).permit( :name, :surname, :tz, :phone)
  end

end
