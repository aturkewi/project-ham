class ComparisonsController < ApplicationController

  def index
    @jobs = Job.all
    @boroughs = Borough.all
  end

  def show
    @boroughs = Borough.all
    @data_set1 = params[:data1]
    @data_set2 = params[:data2]
    @normalizer = params[:normalizer]
  end

end
