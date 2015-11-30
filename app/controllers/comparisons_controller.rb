class ComparisonsController < ApplicationController

  def index
    @boroughs = Borough.all
  end

  def show

    @boroughs = Borough.all
    @comparison = Comparison.new(params[:data_set_one],params[:data_set_two],params[:normalizer_one],params[:normalizer_two])

    @comparison.set_data_arrays

    gon.graph_name = "#{params[:data_set_one]} vs #{params[:data_set_two]}"

    #javascript for data1
    gon.data1bronx = @comparison.data_array_1[0]
    gon.data1brooklyn = @comparison.data_array_1[1]
    gon.data1manhattan = @comparison.data_array_1[2]
    gon.data1queens = @comparison.data_array_1[3]
    gon.data1staten = @comparison.data_array_1[4]

    #javascript for data1
    gon.data2bronx = @comparison.data_array_2[0]
    gon.data2brooklyn = @comparison.data_array_2[1]
    gon.data2manhattan = @comparison.data_array_2[2]
    gon.data2queens = @comparison.data_array_2[3]
    gon.data2staten = @comparison.data_array_2[4]

  end
end
