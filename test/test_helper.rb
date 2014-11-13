lib_dir = File.expand_path('../lib', __dir__)
$LOAD_PATH.unshift(lib_dir)


# gem 'minitest'
require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'



#
# Dir[File.dirname(__FILE__) + '/../lib/*.rb'].each do |file|
#   require file
# end
