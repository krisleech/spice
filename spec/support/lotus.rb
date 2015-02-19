ENV['LOTUS_ENV'] ||= 'test'

require_relative '../../config/environment'

Lotus::Application.preload!

# require_action :web, 'home', 'index'
# require_action :web, 'home/index'
# require_action :Web, 'home/index'
#
def require_action(*elements)
  head, *tail = elements
  directories = ([head, 'controllers'] + tail).map { |element| element.to_s.downcase }
  require APP_ROOT.join('apps').join(*directories)
end

def require_controller(*directories)
  require_action(*directories)
end
