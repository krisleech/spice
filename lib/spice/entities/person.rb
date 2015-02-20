require 'virtus'

class Person
  include Virtus.model

  attribute :id,         String, default: :generate_id
  attribute :first_name, String
  attribute :last_name,  String

  def full_name
    [first_name, last_name].join(' ')
  end

  private

  def generate_id
    SecureRandom.uuid
  end
end
