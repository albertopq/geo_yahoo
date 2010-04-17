require 'ftools'
require 'fileutils'

unless defined? RAILS_ROOT
  RAILS_ROOT = '../../..'
end
puts "Copying files..."
dir = "javascripts"

if !File.exists?("#{RAILS_ROOT}/public/#{dir}/jquery.js")
  dest_file = File.join(RAILS_ROOT, "public", dir, "jquery.js")
  src_file = File.join(File.dirname(__FILE__) , dir, "jquery.js")
  File.copy(src_file, dest_file)

end

if !File.exists?("#{RAILS_ROOT}/public/#{dir}/jquery.autocomplete.js")
  dest_file = File.join(RAILS_ROOT, "public", dir, "jquery.autocomplete.js")
  src_file = File.join(File.dirname(__FILE__) , dir, "jquery.autocomplete.js")
  File.copy(src_file, dest_file)
end

puts "Files copied - Installation complete!"

