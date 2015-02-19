require 'medicine'

module Web::Controllers::Home
  class Index
    include Web::Action
    include Medicine.di

    dependency :repository, default: -> { PeopleRepository.new }

    expose :people

    def call(params)
      @people = repository.all
    end
  end
end
