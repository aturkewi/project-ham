class ComparisonsController < ApplicationController

  def index
    @boroughs = Borough.all
  end

  def show
    @boroughs = Borough.all
    @data_set1 = params[:data_set_one]
    @data_set2 = params[:data_set_two]
    @normalizer = params[:normalizer]
  end

  def formalize (data_set1, data_set2)
    scores = {
      '#{data_set1}' => Job.all.each_with_object({}) do |model, hash|
        hash[model.id] = model.labor_force
      end
      ,
      '#{data_set2}' => Hospital.all.order(:borough_id).group(:borough_id).count
    }
    @correlation = Pearson.coefficient(scores, 'job', 'hospital')
  end
end
