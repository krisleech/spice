support 'lib'
require_all 'spice'

RSpec.describe PeopleRepository do
  it 'foo' do
    person = Person.new
    res = PeopleRepository.create(person)
    puts res.inspect
    expect(PeopleRepository.all.size).to eq 1
  end
end
