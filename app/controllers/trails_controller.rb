class TrailsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @trails = Trail.all
    @pins = Pin.all
  end

  def show
    @hike = Hike.new
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
