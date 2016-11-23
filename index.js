const express = require( "express");
const graphqlHTTP = require( "express-graphql");
const schema = require( "./schema");

const app = express();

app.use( "/", graphqlHTTP(
  function( request) {
    const startTime = Date.now();
    return {
      schema: schema.PoliscopeSchema,
      graphiql: true,
      pretty: true,
      extensions: function( args) {
        return { runTime: "" + (Date.now() - startTime) + " ms" };
      }
    }
  }));

app.listen( 4000);
console.info( "\n Poliscope Document Model · GraphQL app server");
console.info( "\n Listening on http://localhost:4000/");
console.info( " Press CTRL-C to interrupt…");
