class District < ActiveRecord::Base

  require 'json'
  require 'open-uri'
  require 'pry'

  def self.parse
    url = "http://data.cityofnewyork.us/api/views/rfpq-hs49/rows.json"
    result = JSON.parse(open(url).read)
    district_array = result["data"]
  end 

  def self.populate_db
    district_array = parse
    binding.pry
  end 

  def attendance
    file = File.read('./app/models/districts/attendance.json')
    data_hash = JSON.parse(file)
    districts = data_hash["data"]
    manhattan = districts[0..5]
    bronx = districts[6..11]
    brooklyn = districts[12..22]
    queens = districts[23..29]
    staten_island = districts[30]
    man_array = manhattan.map do |district|
      district[9].to_f
    end
    man_avg = man_array.inject{ |sum, el| sum + el }.to_f / man_array.size
    bronx_array = bronx.map do |district|
      district[9].to_f
    end
    bronx_avg = (bronx_array.inject{ |sum, el| sum + el }.to_f / bronx_array.size).round(2)
    bk_array = brooklyn.map do |district|
      district[9].to_f
    end
    bk_avg = (bk_array.inject{ |sum, el| sum + el }.to_f / bk_array.size).round(2)
    queens_array = queens.map do |district|
      district[9].to_f
    end
    queens_avg = (queens_array.inject{ |sum, el| sum + el }.to_f / queens_array.size).round(2)
    staten_avg = staten_island[9].to_f
    binding.pry
  end

  def report_cards
    file = File.read('./app/models/schools/report_cards.json')
    data_hash = JSON.parse(file)
  end

  def sat_scores
    file = File.read('./app/models/schools/sat_scores.json')
    data_hash = JSON.parse(file)
  end

end 

District.populate_db