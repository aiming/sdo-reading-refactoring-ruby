require 'rspec'

$LOAD_PATH << File.expand_path('../..', __FILE__)

Dir['codes/**/*.rb'].each do |f|
  require f
end
