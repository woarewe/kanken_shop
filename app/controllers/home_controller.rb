class HomeController < ApplicationController
  def index
    @backpacks = Backpack.where(status: true)
  end
end
