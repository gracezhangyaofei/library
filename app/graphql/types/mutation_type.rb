module Types
  class MutationType < Types::BaseObject
    # the line below it wrong
    # field :sign_in, mutation: Mutations::SignInMutation
    field :signIn, mutation: Mutations::SignInMutation
  end
end
