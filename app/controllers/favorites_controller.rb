class FavoritesController < ApplicationController

  def create
    binding.pry
    self.build(params[:favorite])
    self.save
    redirect_to favorite_path
  end

  def show
    @User = current_user
  end
end
