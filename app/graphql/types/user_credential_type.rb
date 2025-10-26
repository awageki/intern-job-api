# frozen_string_literal: true

module Types
  class UserCredentialType < Types::BaseObject
    field :id, ID, null: false
    field :user_id, Integer, null: false
    field :name, String, null: false
    field :email, String, null: false
    field :firebase_uid, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
