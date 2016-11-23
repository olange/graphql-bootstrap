graphql = require "graphql"

{ GraphQLSchema,
  GraphQLObjectType,
  GraphQLString } = graphql

exp = module.exports = {}

exp.PoliscopeSchema = new GraphQLSchema {
  description: "Poliscope Document Model"
  query: new GraphQLObjectType {
    name: "RootQueryType"
    description: "All queries of the Poliscope Document Model"
    fields:
      hello:
        type: GraphQLString
        description: "Answers the greeting with a message"
        args:
          who:
            type: GraphQLString
            defaultValue: "world"
        resolve: (rootValue, args, request) ->
          "Hello, #{args.who}!"
  }
}
