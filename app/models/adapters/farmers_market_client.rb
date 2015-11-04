module Adapters
  class FarmersMarketClient

    # attr_reader :connection

    # farmers market data from: https://data.cityofnewyork.us/Business/2012-NYC-Farmers-Market-List/b7kx-qikm

    def connection
      @connection = Adapters::SODAConnection.new
    end

    def get_json_data
      market_array = connection.query("/resource/b7kx-qikm.json")
      market_array.each do |market_data|
        borough_num=BOROUGH_HASH[market_data['borough'].downcase]
        FarmersMarket.create(name:market_data['market_name'], day:market_data['day_s'], borough_id:borough_num)
      end
    end
  end
end

