collection :people do
  entity     Person
  repository PeopleRepository

  attribute :id,         String
  attribute :first_name, String
  attribute :last_name,  String
end
