support 'lotus'
require_action :web, 'home', 'index'

RSpec.describe 'web/home/index' do
  subject { Web::Controllers::Home::Index.new(repository: repository) }

  let(:repository) { double('Repository') }
  let(:params)     { Hash.new }

  it 'calls repository' do
    expect(repository).to receive(:all)
    subject.call(params)
  end
end
