class CallsController < ApplicationController

  def create
    @call = Call.new(call_params)
    @call.save

    respond_to do |format|
      format.js
    end
  end

  def destroy

  end

  private

  def call_params
    params.require(:call).permit(:phone)
  end
end
