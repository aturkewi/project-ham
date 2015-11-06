class FavoritesController < ApplicationController

  def create
    favorite = Favorite.new(favorite_params)
    favorite.save
    redirect_to user_path(params[:favorite][:user_id])
  end

  def show
    @User = current_user
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :community_garden_id, :hospital_id, :flu_id, :district_id, :farmers_market_id, :job_id)
  end



end
