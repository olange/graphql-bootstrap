# Poliscope DM

Poliscope Document Model: a quick proof-of-concept with GraphQL.

## Setup

```bash
$ cd poliscope
$ npm install
````

## Run the app server

Launch the server:

```bash
$ npm start -s
```

Then open a browser at http://localhost:4000 and try following [GraphQL query](http://graphql.org/learn/queries/):

```raw
query greetings {
  greeting1: hello
  greeting2: hello( who: "You")
}
```

## License

[![CC-BY-SA](http://i.creativecommons.org/l/by-sa/4.0/80x15.png)](http://creativecommons.org/licenses/by-sa/4.0/)

[Poliscope Document Model](https://gitlab.com/olange/poliscope) de Olivier Lange est mis à disposition selon les termes de la licence [Creative Commons Attribution - Partage dans les Mêmes Conditions 4.0 International](http://creativecommons.org/licenses/by-sa/4.0/).
