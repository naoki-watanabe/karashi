module Karashi
  class Station
    class << self

      # find all Stations in tokyo 23 wards
      def all_tokyo23
        data
      end

      def find_by_code(code)
        data_by_code[code]
      end

      def find_by_name(name)
        data_by_name[name]
      end

      private

      def data_by_code
        return @data_by_code unless @data_by_code.nil?
        @data_by_code = {}
        data.each{|station| @data_by_code[station.code] = station }
        @data_by_code
      end

      def data_by_name
        return @data_by_name unless @data_by_name.nil?
        @data_by_name = {}
        data.each{|station| @data_by_name[station.name] = station }
        @data_by_name
      end

      def data
        @data ||= Karashi::Loader.load_stations["stations"].map{|station_data| new(station_data) }
      end
    end

    def initialize(data)
      @data = data
    end

    [:code, :name, :kana, :romaji, :city].each do |method_name_symbol|
      define_method method_name_symbol do
        @data[method_name_symbol.to_s]
      end
    end
  end
end
