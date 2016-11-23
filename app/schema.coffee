graphql = require "graphql"

{ GraphQLSchema,
  GraphQLObjectType,
  GraphQLString } = graphql

exp = module.exports = {}

exp.PoliscopeDM = new GraphQLSchema {
  query: new GraphQLObjectType {
    name: "RootQueryType"
    description: "All queries of the Poliscope Document Model."
    fields:
      hello:
        type: GraphQLString
        description: "Answers the greeting with a message."
        args:
          who:
            type: GraphQLString
            description: "Name of whom we should greet. Defaults to « world »."
            defaultValue: "world"
        resolve: (root, { who }, request) ->
          "Hello, #{who}!"
  }
}
