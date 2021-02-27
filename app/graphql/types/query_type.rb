module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.


    field :blog, !Types::BlogType do
      resolve ->(_obj, _args, ctx){
        ctx[:blog]
      }
    end
  end
end
