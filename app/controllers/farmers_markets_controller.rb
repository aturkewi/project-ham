class FarmersMarketsController < ApplicationController

  def show
    @farmers_market = FarmersMarket.find(params[:id])
  end

end
