require "webinarjam_api/version"
require "httparty"

module WebinarjamApi
  class Client
    API_ENDPOINT = "https://app.webinarjam.com/api/v2"

    def initialize(api_key)
      @api_key = api_key
    end

    def get_webinars
      data     = { api_key: @api_key }
      response = HTTParty.post("#{API_ENDPOINT}/webinars", body: data )
    end
  end
end
