class BoroughsController < ApplicationController

  def show
    @borough = Borough.find(params[:id])
  end 

end
