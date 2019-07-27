module Mutations
  class AddItemMutation < Mutations::BaseMutation
    argument :title, String, require: true
    argument :description, String, require: false
    argument :image_url, String, require: false

    field :item, Types::ItemType, null: true
    field :errors, [String], null: false

    def resolve(title:, description: null, image_url: null)
      if context[:current_user].nil?
        raise GraphQL::ExceptionError,
              'Login required'
      end

      item = Item.new(
        title: title, description: description, image_url: image_url,
        user: context[:current_user]
      )

      if item.save
        { item: item }
      else
        { errors: item.errors.full_messages }
      end
    end
  end
end