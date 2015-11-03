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


  def hospital_count
    hospitals.count
  end

  def attendance
    array = self.districts.map do |district|
      district.attendance
    end
    avg_attendance=(array.inject{ |sum, x| sum + x } / array.size).round(2)
    avg_attendance
  end

end
