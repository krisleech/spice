# require_entity 'spice', 'person'
def require_entity(*elements)
  head, *tail = elements
  directories = ([head, 'entities'] + tail).map { |element| element.to_s.downcase }
  require APP_ROOT.join('lib').join(*directories)
end

# require_repo 'spice', 'people'
def require_repo(*elements)
  head, *tail = elements
  directories = ([head, 'repositories'] + tail).map { |element| element.to_s.downcase }
  require APP_ROOT.join('lib').join(*directories)
end

def require_all(app_name)
  require APP_ROOT.join('lib', app_name)
end
