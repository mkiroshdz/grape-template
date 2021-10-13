require 'zeitwerk'

Zeitwerk::Loader.new.tap do |loader|
  loader.push_dir("#{__dir__}/app")
  loader.setup
end

Api.compile!
run Api
