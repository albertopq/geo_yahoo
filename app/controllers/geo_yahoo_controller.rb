include GeoYahooHelper

class GeoYahooController < ActionController::Base 
  def cities
    @yahooDev = YahooDevClient.new()
    @data = @yahooDev.get_cities(params[:q])
  end
end
