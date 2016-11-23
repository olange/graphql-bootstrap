express = require "express"
graphqlHTTP = require "express-graphql"
schema = require "./schema"

app = express()
port = process.env.npm_package_config_port
version = process.env.npm_package_version

app.use "/", \
  graphqlHTTP (request) ->
    startTime = Date.now()
    {
      schema: schema.MySchema
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
