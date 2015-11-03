class Flu < ActiveRecord::Base

  # require 'pp'
  # require 'open-uri'
  # require 'json'
  # require 'pry'

  BOROUGH_HASH = {"bronx"=>1, "brooklyn"=>2, "manhattan"=>3, "queens"=>4, "staten island"=>5}

  def self.parse_data
    url = 'http://data.cityofnewyork.us/api/views/w9ei-idxz/rows.json?accessType=DOWNLOAD'
    buffer = open(url).read
    result = JSON.parse(buffer)
    flu_array = result["data"]
  end

  def self.populate_db
    flu_array = parse_data
    flu_array.each do |flu_data|
      borough_num=BOROUGH_HASH[flu_data[14].downcase]
      create(name:flu_data[9], borough_id:borough_num)
    end
  end

end
