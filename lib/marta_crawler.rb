class MartaCrawler
  extend Resources::LineLibrary
  extend Resources::StationLibrary

  MARTA_ARRIVALS_ENDPOINT = 'http://developer.itsmarta.com/RealtimeTrain/RestServiceNextTrain/GetRealtimeArrivals'

  # Sets the API key for the crawler to use when hitting the MARTA API
  # 
  # @param key [String] the MARTA API key
  # @return [String] the new API key
  def self.marta_api_key=(key)
    @@marta_api_key = key
  end

  # Sets the API key for the crawler to use when hitting the municipal.services
  # API for line/station data
  # 
  # @param key [String] municipal.services API key
  # @return [String] the new API key
  def self.muni_services_api_key=(key)
    @@munic_services_api_key = key
  end

  # Retrives the positions of the trains from the MARTA Realtime Arrivals API
  # 
  # @return [Hash]
  def self.trains
    json = self.get_train_json
    self.parse_train_json(json)
  end

  private

  # Retrieves JSON from MARTA's Realtime Arrivals API, without converting to
  # the project's data format.
  # 
  # @private
  # @return [Hash] a JSON hash
  def self.get_train_json
    unless @@marta_api_key
      raise ArgumentError.new('No MARTA API Key set for MartaCrawler.')
    end

    response = Typhoeus.get(
      MARTA_ARRIVALS_ENDPOINT,
      params: {
        apikey: @@marta_api_key
      }
    )

    if response.success?
      return JSON.parse(response.body)
    else
      raise IOError.new("Error requesting Trains JSON: #{response.body}")
    end
  end

  # Converts JSON from the MARTA API into the project's data format.
  # 
  # @private
  # @return [Hash] a hash of formatted attributes for use in the project
  def self.parse_train_json(json)
    trains = json.each_with_object({}) do |json_item, trains_hash|
      train = self.add_train_to_hash(trains_hash, json_item)
      self.add_station_to_train(train[:stations], json_item)
    end.values
    
    trains.each{ |train| train[:stations] = train[:stations].values}

    return trains
  end

  # Adds a train to the hash of trains if it doesn't already exist.
  # 
  # @param hash [Hash] the hash to add the train to
  # @param train [Hash] a hash of data to add/update on the trains hash
  # @return [Hash] the current train data
  def self.add_train_to_hash(hash, json_item)
    if train = hash[json_item['TRAIN_ID'].to_i]
      return train
    end

    hash[json_item['TRAIN_ID'].to_i] = {
      id:                  json_item['TRAIN_ID'].to_i,
      destination:         json_item['DESTINATION'],
      direction:           json_item['DIRECTION'].downcase.to_sym,
      line:                json_item['LINE'].downcase.to_sym,
      stations:            {}
    }
  end

  # Adds a train to the hash of trains if it doesn't already exist.
  # 
  # @param hash [Hash] the hash to add the train to
  # @param train [Hash] a hash of data to add/update on the trains hash
  # @return [Hash] the current train data
  def self.add_station_to_train(stations, json)
    return nil if stations.include?(json['STATION'])

    stations[json['STATION']] = {
      station:             json['STATION'],
      status:              self.parse_status(json['WAITING_TIME']),
      waiting_seconds:     json['WAITING_SECONDS'].to_i
    }
  end

  # Converts MARTA's statuses into statuses compatible with the project
  # 
  # @private
  # @return [String] the converted status
  def self.parse_status(marta_status)
    case marta_status
    when 'Boarding'
      'boarding'
    when 'Arriving'
      'arriving'
    else
      'en_route'
    end
  end

  #   # get Line data
  #   def getLine
  #     # id
  #     # color
  #     name = obj["LINE"]
  #   end

  #   # get Station data
  #   def getStation
  #     name = obj["STATION"]
  #   end

  #   def getHTML
  #     page_url = "http://www.itsmarta.com/service-updates.aspx"
  #     page = Nokogiri::HTML(open(page_url))

  #     events = page.css("div.service-updates__item-content.content").map do |eventnode|
  #       name = eventnode.at_css("p")
  #       if name != nil
  #         name = name.text.strip
  #         puts name
  #       end
  #     end
  #   end
end
