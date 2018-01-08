class OrdersController < ApplicationController

  http_basic_authenticate_with name: 'admin', password: 'admin', except: :create

  def destroy
  end

  def create
    @order = Order.new(order_params)
    @order.save

    respond_to do |format|
      format.js
    end

  end

  def index
  end

  private

  def order_params
    params.require(:order).permit(:name, :phone, :color, :adress)
  end


end
