support 'lib'
require_entity 'spice', 'person'

RSpec.describe Person do

  describe 'initialization' do
    subject(:person) { Person.new(attributes) }

    describe 'given attribute hash' do
      let(:attributes) { { id: '123', first_name: 'Kris', last_name: 'Leech' } }

      it 'populates attributes' do
        expect(person.id).to         eq '123'
        expect(person.first_name).to eq 'Kris'
        expect(person.last_name).to  eq 'Leech'
      end
    end

    describe 'given empty attribute hash' do
      let(:attributes) { {} }

      it 'generates an id' do
        expect(person.id).not_to be_nil
      end
    end
  end

  describe '#full_name' do
    subject(:person) { Person.new(first_name: 'Kris', last_name: 'Leech') }
    it 'is first and last name' do
      expect(person.full_name).to eq 'Kris Leech'
    end
  end
end
