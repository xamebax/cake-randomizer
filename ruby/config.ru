require 'bundler/setup'

lib = File.join(File.dirname(__FILE__), 'lib')
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'cake_randomizer'

run CakeRandomizer::App.new
