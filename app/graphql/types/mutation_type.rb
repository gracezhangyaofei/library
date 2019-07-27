module Types
  class MutationType < Types::BaseObject
    # the line below it wrong
    # field :sign_in, mutation: Mutations::SignInMutation
    field :signIn, mutation: Mutations::SignInMutation
    field :addItem, mutation: Mutations::AddItemMutation
    field :updateItem, mutation: Mutations::UpdateItemMutation
  end
end
