module Adapters
  class HospitalClient

    # attr_reader :connection

    # hospital data from: https://data.cityofnewyork.us/Health/Health-and-Hospitals-Corporation-HHC-Facilities/f7b6-v6v3

    BOROUGH_HASH = {"bronx"=>1, "brooklyn"=>2, "manhattan"=>3, "queens"=>4, "staten island"=>5}

    def connection
      @connection = Adapters::SODAConnection.new
    end

    def get_json_data
      hospital_array = connection.query("/resource/f7b6-v6v3.json")
      hospital_array.each do |hospital_data|
        borough_num=BOROUGH_HASH[hospital_data['borough'].downcase]
        Hospital.create(name:hospital_data['facility_name'], hospital_type:hospital_data['facility_type'], borough_id:borough_num)
      end
    end
  end
end

