ActionController::Routing::Routes.draw do |map| 
  map.connect '/geoyahoo/cities', :controller => 'geo_yahoo', :action => 'cities'
end