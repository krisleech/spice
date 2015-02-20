require 'lotus/model'

Dir["#{ __dir__ }/spice/**/*.rb"].each { |file| require_relative file }

Lotus::Model.configure do
  adapter type: :memory, uri: 'memory://localhost/spice_development'
  mapping "#{__dir__}/config/mapping"
end.load!
