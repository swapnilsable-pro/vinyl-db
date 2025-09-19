# frozen_string_literal: true

module Types
  class SongType < Types::BaseObject
    # Apollo Federation key directive
    key fields: :id

    field :id, ID, null: false
    field :title, String
    field :artist, String
    field :duration, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
