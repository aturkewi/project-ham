class ComparisonsController < ApplicationController

  def index
      @jobs = Job.all
  end

end