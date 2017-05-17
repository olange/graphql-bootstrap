express = require "express"
graphqlHTTP = require "express-graphql"


app = express()
port = process.env.npm_package_config_port
version = process.env.npm_package_version

Schema = require "./schema/schema"
Resolvers = require "./resolvers"
{ makeExecutableSchema } = require "graphql-tools"

executableSchema = makeExecutableSchema(
  typeDefs: Schema
  resolvers: Resolvers
)

app.use "/", \
  graphqlHTTP (request) ->
    startTime = Date.now()
    {
      schema: executableSchema
      graphiql: true
      pretty: true
      extensions: (args) ->
        # { document, variables, operationName, result } = args
        { runTime: "" + (Date.now() - startTime) + " ms" }
    }

app.listen port
console.info """
  GraphQL app server v#{version}

  Listening on http://localhost:#{port}/
  Press CTRL-C to interrupt…
  """
