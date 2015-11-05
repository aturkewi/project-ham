class FavoritesController < ApplicationController

  def save_favorite
    #params user, data_name such as hospital, and id of the data 
    self.user = current_user
    self.send(params[:favorite_data_name]) = self.send(params[:favorite_data_id]).find([:id])
    self.save
    #User.all.(id).favorites.(id).hospital
  end

  def show_favorite
    @User = User.find(session[:current_user_id])
    #at show


    # @User.favorites.each do |favorite|
    #   favorite
    # end
  end
end
