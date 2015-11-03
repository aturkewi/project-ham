class Hospital < ActiveRecord::Base

  # hospital data from: https://data.cityofnewyork.us/Health/Health-and-Hospitals-Corporation-HHC-Facilities/f7b6-v6v3

  require 'pp'
  require 'open-uri'
  require 'json'
  require 'pry'

  BOROUGH_HASH = {"bronx"=>1, "brooklyn"=>2, "manhattan"=>3, "queens"=>4, "staten island"=>5}

  def self.parse_data
    url = 'http://data.cityofnewyork.us/resource/f7b6-v6v3.json'
    buffer = open(url).read
    hospital_array = JSON.parse(buffer)
  end

  def self.populate_db
    hospital_array = parse_data
    hospital_array.each do |hospital_data|
      borough_num=BOROUGH_HASH[hospital_data['borough'].downcase]
      create(name:hospital_data['facility_name'], hospital_type:hospital_data['facility_type'], borough_id:borough_num)
    end
  end

end
