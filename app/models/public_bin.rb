
class PublicBin < ActiveRecord::Base

  BOROUGH_HASH = {"bronx"=>1, "brooklyn"=>2, "manhattan"=>3, "queens"=>4, "staten island"=>5}

  def self.parse_data
    url = 'http://data.cityofnewyork.us/api/views/sxx4-xhzg/rows.json?'
    buffer = open(url).read
    result = JSON.parse(buffer)
    pub_bin_data = result["data"]
    binding.pry
  end

  def self.populate_db
    pub_bin_data = parse_data
    pub_bin_data.each do |bin_data|
      borough_num=BOROUGH_HASH[bin_data[14].downcase]
      create(name:bin_data[9], borough_id:borough_num)
    end
  end

end
