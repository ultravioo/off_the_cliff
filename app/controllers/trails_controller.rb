class TrailsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @pins = Pin.all
    if params[:query].present?
      sql_query = "name ILIKE :query OR location ILIKE :query"
      @trails = Trail.where(sql_query, query: "%#{params[:query]}%")
    else
      @trails = Trail.all
    end
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
  end
end
