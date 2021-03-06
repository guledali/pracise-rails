module Types
  class MutationType < Types::BaseObject

    field :create_author, AuthorType, null: true, description: "Create an author" do
      argument :first_name, String, required: false, camelize: false
      argument :last_name, String, required: false, camelize: false
      argument :yob, Integer, required: false
      argument :is_alive, Boolean, required: false, camelize: false
    end

    def create_author(first_name:, last_name:, yob:, is_alive:)
      Author.create first_name: first_name, last_name: last_name, yob: yob, is_alive: is_alive
    end

  end
end
