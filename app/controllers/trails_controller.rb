class TrailsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @pins = Pin.all
    @trails = Trail.all
    @trails = @trails.where(difficulty: params[:difficulty]) if params[:difficulty].present?
    @trails = @trails.where("name ILIKE :query OR location ILIKE :query", query: "%#{params[:query]}%") if params[:query].present?
  end

  def show
    @hike = Hike.new
    @favorite = Favorite.new
    @trail = Trail.find(params[:id])
    @pins = @trail.pins.map do |point|
      {
        lat: point.latitude,
        lng: point.longitude,
        kind: point.kind,
        description: point.description,
        info_window: render_to_string(partial: "info_window", locals: { pin: point })
      }
    end
    @points = @trail.points.map do |point|
      [
        point.longitude,
        point.latitude
      ]
    end
    @counter = @trail.points.count
    @middle = @counter.div(2)
  end
end
