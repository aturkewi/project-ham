require 'json'
require 'open-uri'

class District < ActiveRecord::Base


  def self.parse
    url = "http://data.cityofnewyork.us/api/views/rfpq-hs49/rows.json"
    result = JSON.parse(open(url).read)
    district_array = result["data"]
  end 

  def self.populate_db
    district_array = parse
    district_array.each do |district|
      create(number: district_array[0])
    end
  end 
end


