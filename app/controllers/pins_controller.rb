class PinsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @trail = Trail.find(params[:trail_id])
    @pins = @trail.pins
  end

  def confirm
    
  end
end
