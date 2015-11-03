class ComparisonsController < ApplicationController

  def index
      @jobs = Job.all
  end

  def show
    binding.pry
    @data_set1 = Job.all
  end

end
