class LocationsService
  LOCATIONS_API_URI = 'https://api-proxy.wework.com/locations/'

  def self.call_api(endpoint)
    Rails.cache.fetch(endpoint, expires_in: 1.day) do
      raw_response = client.get('api/v1/' + endpoint)
      unless raw_response&.success?
        error_message = "Failed to load from Location API\n\tResponse: #{raw_response.inspect}"
        Rails.logger.error error_message
        raise StandardError.new(error_message)
      end

      parsed_response = JSON.parse(raw_response.body)
      parsed_response
    end
  end

  def self.client
    @@client ||= Faraday.new do |faraday|
      faraday.request  :url_encoded
      faraday.adapter Faraday.default_adapter
    end

    @@client.url_prefix = LOCATIONS_API_URI
    @@client
  end
end