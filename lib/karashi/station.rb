module Karashi
  class Station
    class << self

      # find all Stations in tokyo 23 wards
      def all_tokyo23
        data.map{|station_data| new(station_data) }
      end

      private

      def data
        @data ||= Karashi::Loader.load_stations["stations"]
      end
    end

    def initialize(data)
      @data = data
    end

    [:name, :kana, :romaji, :city].each do |method_name_symbol|
      define_method method_name_symbol do
        @data[method_name_symbol.to_s]
      end
    end
  end
end
