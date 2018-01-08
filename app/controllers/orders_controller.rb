class OrdersController < ApplicationController

  http_basic_authenticate_with name: 'admin', password: 'admin', except: :create

  def destroy
    @order = Order.find(params[:id])
    @order.destroy!
    redirect_to orders_path
  end

  def create
    @order = Order.new(order_params)
    @order.save

    respond_to do |format|
      format.js
    end

  end

  def index
    @orders = Order.all
    @calls = Call.all
  end

  private

  def order_params
    params.require(:order).permit(:name, :phone, :color, :adress)
  end


end
