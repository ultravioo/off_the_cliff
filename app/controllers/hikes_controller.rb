class HikesController < ApplicationController
  skip_before_action :authenticate_user!

  def create
    @hike = Hike.new
    @hike.user = current_user
    @hike.trail = Trail.find(params[:trail_id])
    @hike.save!
    redirect_to hike_path(@hike)
  end

  def update
    @hike = Hike.find(params[:id])
    if @hike.started_at.nil?
      @hike.started_at = Time.now
      @hike.save
      redirect_to hike_path(@hike)
    else
      @hike.ended_at = Time.now
      @hike.save
      redirect_to trail_pins_path(@hike.trail_id)
    end
  end

  def show
    @hike = Hike.find(params[:id])
  end
end
