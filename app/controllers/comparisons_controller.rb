class ComparisonsController < ApplicationController

  def index
    @jobs = Job.all
    @boroughs = Borough.all
  end

  def show
    @boroughs = Borough.all
    @data_set1 = params[:data_set_one]
    @data_set2 = params[:data_set_two]
    @normalizer = params[:normalizer]
  end

end
