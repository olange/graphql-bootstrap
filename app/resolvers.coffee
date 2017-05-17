module.exports = {
  Query: {
    hello: (_, {who}) ->
      date: new Date()
      text: "Hello, #{who}!"

    goodbye: (_, {who}) ->
      date: new Date()
      text: "Bye bye, #{who}!"
  }
}
