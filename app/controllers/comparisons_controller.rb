class ComparisonsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def show
    scores = {
      'job' => Job.all.each_with_object({}) do |model, hash|
        hash[model.id] = model.labor_force
      end
      ,
      'hospital' => Hospital.all.order(:borough_id).group(:borough_id).count
    }
    correlation = Pearson.coefficient(scores, 'job', 'hospital')

    # binding.pry
    # # @data_set1 job
    # # @data_set2 hospital

    # @data_set1_class = params[:data_set1_class].capitalize
    # @data_set1_category = params[:data_set1_category]

    # @data_set2 = params[:data_set2_class].capitalize
    # @data_set2_category = params[:data_set2_category]
    # formalize (@data_set1, @data_set2)

  end


  def formalize (data_set1, data_set1_category, data_set2, data_set2_category)

  end
end
