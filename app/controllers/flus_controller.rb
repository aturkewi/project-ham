class FlusController < ApplicationController

  def show
    @flu = Flu.find(params[:id])
  end

end
