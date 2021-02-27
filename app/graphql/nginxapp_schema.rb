class NginxappSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)
  require 'types/mutation_type'

  def self.resolve_type(abstract_type, obj, ctx)
    raise(GraphQL::RequiredImplementationMissingError)
  end

  def self.id_from_object(object, type_definition, query_ctx)
  end

  def self.object_from_id(id, query_ctx)
  end
end
