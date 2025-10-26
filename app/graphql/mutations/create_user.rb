# frozen_string_literal: true

module Mutations
  class CreateUser < BaseMutation
    field :user, Types::UserType, null: true

    argument :name, String, required: true
    argument :email, String, required: true

    def resolve(**args)
      user = nil

      ActiveRecord::Base.transaction do
        user = User.new
        user.build_credential(args)
        user.save!
      end

      { user: }
    end
  end
end
