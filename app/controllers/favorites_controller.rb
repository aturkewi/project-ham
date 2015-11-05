class FavoritesController < ApplicationController

  def create

    binding.pry

  end

  def show_favorite
    @User = User.find(session[:current_user_id])
    #at show


    # @User.favorites.each do |favorite|
    #   favorite
    # end
  end
end
