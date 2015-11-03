class ComparisonsController < ApplicationController

  def index
    @jobs = Job.all
    @boroughs = Borough.all
  end

  def show
    @boroughs = Borough.all
    
  end

end
