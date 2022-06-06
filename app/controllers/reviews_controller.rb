class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @trail = Trail.find(params[:trail_id])
    @user = current_user
    @review.user = @user
    @review.trail = @trail
    if @review.save!
      redirect_to profile_path
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
