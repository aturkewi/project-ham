# == Schema Information
#
# Table name: crimes
#
#  id                 :integer          not null, primary key
#  borough_id         :integer
#  murder             :integer
#  rape               :integer
#  robbery            :integer
#  assault            :integer
#  burglary           :integer
#  grand_larceny      :integer
#  grand_larceny_auto :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Crime < ActiveRecord::Base
  # Bronx:1, Brooklyn:2, Manhattan:3, Queens:4, Staten_Island:5

  PRECINCT_HASH = {1=>(40..59), 2=>(60..99), 3=>(1..39), 4=>(100..119), 5=>(120..123)}

  def self.load_csv_file
    csv_text = File.read('public/crime_data.csv')
    csv = CSV.parse(csv_text)
    csv.each do |row|
      borough = Crime.find_borough_by_precinct(row[0])
      binding.pry
    end
  end

  def self.find_borough_by_precinct(precinct)
    PRECINCT_HASH.find do|borough, precincts| 
      precincts.include?(precinct.to_i)  
    end.first
  end


end
