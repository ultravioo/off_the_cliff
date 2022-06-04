class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new
    @trail = Trail.find(params[:trail_id])
    @user = current_user
    @favorite.user = @user
    @favorite.trail = @trail
    @favorite.save!
  end
end
