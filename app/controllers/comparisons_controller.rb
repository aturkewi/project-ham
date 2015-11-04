class ComparisonsController < ApplicationController

  def index
    @boroughs = Borough.all
  end

  def show
    @boroughs = Borough.all
    @comparison = Comparison.new(params[:data_set_one],params[:data_set_two],params[:normalizer_one],params[:normalizer_two])
  end   
end
