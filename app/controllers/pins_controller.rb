class PinsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @review = Review.new
    @trail = Trail.find(params[:trail_id])
    @pins = @trail.pins
  end
end
