class ComparisonsController < ApplicationController

  def index
    @boroughs = Borough.all
  end

  def show
    @boroughs = Borough.all
    @comparison = Comparison.new(params[:data_set_one],params[:data_set_two],params[:normalizer])
    # @data_set1 = params[:data_set_one]
    # @data_set2 = params[:data_set_two]
    # @normalizer = params[:normalizer]
  end   

end
