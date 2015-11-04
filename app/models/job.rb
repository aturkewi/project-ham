# == Schema Information
#
# Table name: jobs
#
#  id           :integer          not null, primary key
#  borough_id   :integer
#  labor_force  :integer
#  employed     :integer
#  unemployed   :integer
#  unemployment :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#


class Job < ActiveRecord::Base
  belongs_to :borough
  def self.test
    data_1_value = Job.all.each_with_object({}) do |model, hash|
      hash[model.id] = model.labor_force
    end
    data_2_value = Hospital.all.order(:borough_id).group(:borough_id).count
  
    scores = {
      'job' => data_1_value,
      'hospital' => data_2_value
    }
    correlation = Pearson.coefficient(scores, 'job', 'hospital')
   
  end

  def self.create_csv
    csv_text = File.read('public/labor_data.csv')
    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
      Job.create!(row.to_hash)
    end
  end


end
