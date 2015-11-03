class ComparisonsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def show
    @boroughs = Borough.all
    
  end

end
