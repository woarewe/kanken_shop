class BackpacksController < ApplicationController
  def update
    @backpack = Backpack.find(params[:id])
    @backpack.status = backpack_params[:status]
    @backpack.save!
    redirect_to orders_path
  end

  private

  def backpack_params
    params.require(:backpack).permit(:status)
  end
end
