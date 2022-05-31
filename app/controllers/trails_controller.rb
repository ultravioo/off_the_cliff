class TrailsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @trails = Trail.all
  end

  def show
    @trail = Trail.find(params[:id])
  end
end
