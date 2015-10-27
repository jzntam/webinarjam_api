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

    def get_webinar(webinar_id)
      data     = { api_key: @api_key, webinar_id: webinar_id }
      response = HTTParty.post("#{API_ENDPOINT}/webinar", body: data )
    end

    def register_person(webinar_id, schedule, lead)
      data      = { api_key: @api_key, webinar_id: webinar_id, schedule: schedule }
      lead_data = data.merge(lead)
      response  = HTTParty.post("#{API_ENDPOINT}/register", body: lead_data )
    end
  end
end
