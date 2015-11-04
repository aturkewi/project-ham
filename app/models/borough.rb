# == Schema Information
#
# Table name: boroughs
#
#  id         :integer          not null, primary key
#  name       :string
#  area       :integer
#  population :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Borough < ActiveRecord::Base

  has_many :hospitals
  has_many :flus
  has_many :districts
  has_many :jobs
  
  def hospital_count(normalizer)
    num_of_hospitals = hospitals.count
    normalizer != "nil" ? num_of_hospitals/self.send(normalizer) : num_of_hospitals
  end

  def district_attendance(normalizer)
    array = self.districts.map do |district|
      district.attendance
    end
    avg_attendance=(array.inject{ |sum, x| sum + x } / array.size).round(2)
    normalizer != "nil" ? avg_attendance/self.send(normalizer) : avg_attendance
  end

  # def formalize (data_set1, data_set2)
  #   scores = {
  #     '#{data_set1}' => Job.all.each_with_object({}) do |model, hash|
  #       hash[model.id] = model.labor_force
  #     end
  #     , 
  #     '#{data_set2}' => Hospital.all.order(:borough_id).group(:borough_id).count
  #   }
  #   @correlation = Pearson.coefficient(scores, 'job', 'hospital')
  # end
end
