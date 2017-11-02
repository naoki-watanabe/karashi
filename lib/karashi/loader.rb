require 'json'
module Karashi
  class Loader
    class << self
      def load_stations
        JSON.parse(File.read(File.join(data_path, "stations.json")))
      end

      private

      def data_path
        File.expand_path("../data", __FILE__)
      end
    end
  end
end
