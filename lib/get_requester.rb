require 'net/http'
require 'open-uri'
require 'json'

class GetRequester
  attr_accessor :uri

  def initialize(url)
    @uri = URI.parse(url) 
  end

  def get_response_body
    response = Net::HTTP.get_response(self.uri)
    response.body
  end

  def parse_json
    parsed = JSON.parse(get_response_body)
  end

end