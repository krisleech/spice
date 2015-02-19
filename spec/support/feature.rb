require_relative './lotus'

require 'capybara'
require 'capybara/dsl'

Capybara.app = Lotus::Container.new

class MiniTest::Spec
  include Capybara::DSL
end

