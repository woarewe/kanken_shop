class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.save

    respond_to do |format|
      format.js
    end
  end

  def update
    @review = Review.find(params[:id])
    @review.status = review_status[:status]
    @review.save!
    redirect_to orders_path
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy!
    redirect_to orders_path
  end

  private

  def review_params
    params.require(:review).permit(:name, :city, :text)
  end

  def review_status
    params.require(:review).permit(:status)
  end
end
