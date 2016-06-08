class OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to order_path(@order)
    else
      render 'new'
    end

  end

  def new
    @order = Order.new
  end

  def edit
    @order = Order.find(params[:id])
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
    params.require(:order).permit(:name, :surname, :tz, :phone)
  end

end
