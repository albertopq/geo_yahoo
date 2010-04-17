module GeoYahooHelper
 def geo_autocomplete(id,updates)
    js ="jQuery.noConflict();\n"
    js ="$('##{id}').autocomplete('/#{url}');\n"
    js += "$('##{id}').result(function(event, data, formatted) {\n"
    js += "aux=jQuery(data);\n"
    updates.each_with_index {|item, index|
      js +="$('##{item}').val(data[#{index+1}]);\n"
    }
    js += "});"
    javascript_tag  js
  end
end
