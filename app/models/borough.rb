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


  def hospital_count(normalizer)
    num_of_hospitals = hospitals.count
    normalizer ? num_of_hospitals/self.send(normalizer) : num_of_hospitals
  end

  def district_attendance(normalizer)
    array = self.districts.map do |district|
      district.attendance
    end
    avg_attendance=(array.inject{ |sum, x| sum + x } / array.size).round(2)
    normalizer ? avg_attendance/self.send(normalizer) : avg_attendance
  end

end
