class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.save

    respond_to do |format|
      format.js
    end
  end

  def destroy
  end

  private

  def review_params
    params.require(:review).permit(:name, :city, :text)
  end
end
