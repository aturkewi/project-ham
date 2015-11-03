class Crime < ActiveRecord::Base
  # Bronx:1, Brooklyn:2, Manhattan:3, Queens:4, Staten_Island:5

  PRECINCT_HASH = {1=>(40..59), 2=>(60..99), 3=>(1..39), 4=>(100..119), 5=>(120..123)}

  def self.load_csv_file
    csv_text = File.read('public/crime_data.csv')
    csv = CSV.parse(csv_text)
    binding.pry
    csv.each do |row|
      Job.create!(row.to_hash)
    end
  end
end
