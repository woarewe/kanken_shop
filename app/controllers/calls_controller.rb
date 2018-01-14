class CallsController < ApplicationController

  http_basic_authenticate_with name: 'admin', password: 'admin', only: :destroy

  def create
    @call = Call.new(call_params)
    @call.save

    respond_to do |format|
      format.js
    end
  end

  def destroy
    @call = Call.find(params[:id])
    @call.destroy!
    redirect_to orders_path
  end

  private

  def call_params
    params.require(:call).permit(:phone, :name)
  end
end
