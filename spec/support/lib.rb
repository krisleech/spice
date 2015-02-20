# require_entity 'spice', 'person'
def require_entity(*elements)
  head, *tail = elements
  directories = ([head, 'entities'] + tail).map { |element| element.to_s.downcase }
  require APP_ROOT.join('lib').join(*directories)
end
