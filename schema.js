const graphql = require('graphql');

const GraphQLSchema = graphql.GraphQLSchema,
      GraphQLObjectType = graphql.GraphQLObjectType,
      GraphQLString = graphql.GraphQLString;

var exp = module.exports = {};

exp.PoliscopeSchema = new GraphQLSchema({
  query: new GraphQLObjectType({
    name: 'RootQueryType',
    fields: {
      hello: {
        type: GraphQLString,
        resolve() {
          return 'world';
        }
      }
    }
  })
});
