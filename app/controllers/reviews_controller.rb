class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @trail = Trail.find(params[:trail_id])
    @user = current_user
    @review.user = @user
    @review.trail = @trail
    @review.save!
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
