class OrdersController < ApplicationController

  def index
  end

  def create
    render plain: params[:order].to_s.plain
  end

  def new
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end

end
