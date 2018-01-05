class HomeController < ApplicationController
  def index
    @backpacks = Backpack.all.select(&:status)
  end
end
