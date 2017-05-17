Message = require "./message"

Schema = """
# Available queries from the schema
type Query {
  # Answers the greeting with a message
  hello(
    # Name of whom we should greet. Defaults to « world »
    who: String = "world"
  ): Message

  # Answers goodbye to someone
  goodbye(
    # Name of whom we should say bye bye
    who: String!
  ): Message
}

schema {
  query: Query
}
"""

module.exports = [
  Schema
  Message
]
