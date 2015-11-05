class CommunityGardensController < ApplicationController

  def show
    @community_garden = CommunityGarden.find(params[:id])
  end

end
