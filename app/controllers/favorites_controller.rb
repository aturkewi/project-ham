class FavoritesController < ApplicationController

  def create
    favorite = Favorite.new(favorite_params)
    favorite.save
    redirect_to user_path(params[:favorite][:user_id])
  end

  def show
    @User = current_user
  end

  def destroy
    favorite = Favorite.find(params[:id])
    favorite.destroy
    redirect_to current_user
  end

  private

  def favorite_params
    params.require(:favorite).permit(:user_id, :favoritable_id, :favoritable_type)
  end



end
