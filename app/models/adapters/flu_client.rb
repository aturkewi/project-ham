module Adapters
  class FluClient

    # attr_reader :connection

    # Data from https://data.cityofnewyork.us/Health/New-York-City-Locations-Providing-Seasonal-Flu-Vac/w9ei-idxz

    BOROUGH_HASH = {"bronx"=>1, "brooklyn"=>2, "manhattan"=>3, "queens"=>4, "staten island"=>5}

    def connection
      @connection = Adapters::SODAConnection.new
    end

    def get_json_data
      flu_array = connection.query("/resource/w9ei-idxz.json")
      flu_array.each do |flu_data|
        borough_num=BOROUGH_HASH[flu_data['facilitycity'].downcase]
        Flu.create(name:flu_data['facilityname'], borough_id:borough_num)
      end
    end
  end
end

