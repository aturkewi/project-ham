class Hospital < ActiveRecord::Base

  require 'pp'
  require 'open-uri'
  require 'json'
  require 'pry'

  BOROUGH_HASH = {"bronx"=>1, "brooklyn"=>2, "manhattan"=>3, "queens"=>4, "staten island"=>5}

  def self.parse_data
    url = 'http://data.cityofnewyork.us/api/views/f7b6-v6v3/rows.json?accessType=DOWNLOAD'
    buffer = open(url).read
    result = JSON.parse(buffer)
    hospital_array = result["data"]
  end

  def self.populate_db
    hospital_array = parse_data
    hospital_array.each do |hospital_data|
      borough_num=BOROUGH_HASH[hospital_data[9].downcase]
      create(name:hospital_data[10], hospital_type:hospital_data[8], borough_id:borough_num)
    end
  end

end
