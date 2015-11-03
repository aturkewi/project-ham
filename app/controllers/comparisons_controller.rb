class ComparisonsController < ApplicationController

  def index
      @jobs = Job.all
  end

  def show
    @data_set1 = Job.all
  end

end
