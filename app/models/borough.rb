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
  has_many :farmers_markets
  has_many :community_gardens
  
  def hospital_count(normalizer)
    num_of_hospitals = hospitals.count
    normalizer != "nil" ? num_of_hospitals/self.send(normalizer) : num_of_hospitals
  end

  def farmers_market_count(normalizer)
    num_of_markets = farmers_markets.count
    normalizer != "nil" ? num_of_markets/self.send(normalizer) : num_of_markets
  end

  def flu_count(normalizer)
    num_of_flus = flus.count
    normalizer != "nil" ? num_flus/self.send(normalizer) : num_of_flus
  end

  def community_garden_count(normalizer)
    num_of_gardens = community_gardens.count
    normalizer != "nil" ? num_of_gardens/self.send(normalizer) : num_of_gardens
  end

  def district_attendance(normalizer)
    array = districts.map do |district|
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
