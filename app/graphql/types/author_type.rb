class Types:: AuthorType < Types::BaseObject

  field :id, ID, null: false
  field :first_name, String, null: true, camelize: false
  field :last_name, String, null: true, camelize: false
  field :yob, Integer, null: false
  field :is_alive, Boolean, null: true, camelize: false
  field :full_name, String, null:true, camelize: false
  
  def full_name
    ([object.first_name, object.last_name].compact).join " "
  end

  field :coordinates, Types::CoordinatesType, null: false

  field :publication_years, [Integer], null: false, camelize: false
end