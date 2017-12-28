Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :user do
    type UserType
    description 'one user'
    argument :id, types.ID
    resolve -> (obj, args, ctx) {
      User.find args[:id]
    }
  end

  field :users do
    type types[UserType]
    description 'list user'
    argument :page, types.Int
    resolve -> (obj, args, ctx) {
      User.page(args[:page])
    }
  end
end
