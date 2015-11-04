module Adapters
  class CommunityGardenClient

    BOROUGH_LETTER_HASH = {"X"=>1, "B"=>2, "M"=>3, "Q"=>4, "R"=>5}

    # community garden data from: https://data.cityofnewyork.us/Environment/NYC-Greenthumb-Community-Gardens/ajxm-kzmj

    def connection
      @connection = Adapters::SODAConnection.new
    end

    def get_json_data
      garden_array = connection.query("/resource/ajxm-kzmj.json")
      garden_array.each do |garden_data|
        borough_num=BOROUGH_HASH[garden_data['boro']]
        CommunityGarden.create(name:garden_data['garden_name'], size:garden_data['size'], borough_id:borough_num)
      end
    end
  end
end

