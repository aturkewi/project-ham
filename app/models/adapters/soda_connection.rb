module Adapters
  class SODAConnection
    include HTTParty

    attr_reader :connection

    def initialize
      @connection = self.class
    end

    # Call Adapters::SODAConnection.new
    # Things that are common for every time you connect to spotiy.
    def query(end_path)
      results = connection.get("http://data.cityofnewyork.us" + end_path)
      s_results = RecursiveOpenStruct.new(results, :recurse_over_results)
    end

  end
end
