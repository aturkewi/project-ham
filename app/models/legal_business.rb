require 'open-uri'
require 'pry'
require 'json'

class LegalBusiness

  def self.parse_data
    url = 'http://data.cityofnewyork.us/api/views/w7w3-xahh/rows.json'
    buffer = open(url).read
     binding.pry
    result = JSON.parse(buffer)
  end

end
LegalBusiness.parse_data