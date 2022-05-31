class TrailsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @trails = Trail.all

  end

  def show
    @trail = Trail.find(params[:id])
    @markers = @trail.points.map do |point|
      [
        point.longitude,
        point.latitude
      ]
    end
  end
end
