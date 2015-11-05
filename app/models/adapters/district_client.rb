module Adapters
  class DistrictClient

    DISTRICT_HASH = { 1 => [7, 8, 9, 10, 11, 12], 2 => [13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 32], 3 => [1, 2, 3, 4, 5, 6], 4 => [24, 25, 26, 27, 28, 29, 30], 5 => [31]}

    def connection
      @connection = Adapters::SODAConnection.new
    end

    def get_json_data
      result = connection.query("/api/views/rfpq-hs49/rows.json")
      attendance = result["data"]
      district_array = attendance[0..31]
      district_array.each do |district|
      array = DISTRICT_HASH.find do |boro|
        boro[1].include?(district[0])
        end
      borough_id = array[0]
      District.create(name: district[8], attendance: (district[9].to_f), borough_id: borough_id)
      end
    end 
  end
end
