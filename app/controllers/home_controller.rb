class HomeController < ApplicationController
  def index
    @backpacks = Backpack.all.select(&:status)
    @order = Order.new
    @call = Call.new
    @reviews = Review.all.select(&:status)
    @review = Review.new
  end
end
