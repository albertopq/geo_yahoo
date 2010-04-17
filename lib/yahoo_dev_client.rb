require "uri"
require 'net/http'
require 'json'


class YahooDevClient
  YAHOO_API = ENV['YAHOO_API']

  
  def get_cities(params)
    params = params.tr(" ","+")
    url = "http://where.yahooapis.com/v1/places.q("+params+");start=0;count=10?appid="+YAHOO_API+"&format=json"
    resp = Net::HTTP.get_response(URI.parse(url)) # get_response takes an URI object
    return  JSON.parse(resp.body)
  end
  
end