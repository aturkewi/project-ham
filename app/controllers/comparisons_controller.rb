class ComparisonsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def show

  end

  def formalize (data_set1, data_set2)
    scores = {
      '#{data_set1}' => Job.all.each_with_object({}) do |model, hash|
        hash[model.id] = model.labor_force
      end
      ,
      binding.pry
      '#{data_set2}' => Hospital.all.order(:borough_id).group(:borough_id).count
    }
    @correlation = Pearson.coefficient(scores, 'job', 'hospital')
  end
end
