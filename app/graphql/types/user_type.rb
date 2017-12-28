UserType = GraphQL::ObjectType.define do
  name 'User'

  field :id, types.ID
  field :name, types.String
  field :email, types.String
  field :address, types.String
  field :phone, types.String
  field :avatar, types.String
  field :created_at do
    type types.Int
    resolve -> (obj, args, ctx) {
      obj.created_at.to_i
    }
  end
  field :updated_at do
    type types.Int
    resolve -> (obj, args, ctx) {
      obj.updated_at.to_i
    }
  end
end