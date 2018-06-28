# ECO Classifier

Classifies chess openings with a search tree built from the [SCID](https://sourceforge.net/p/scid/wiki/StartHere/) ECO data file


## Installation

```
$ gem install eco-classifier
```

Or add it to your Gemfile

```
gem 'eco-classifier'
```


## Classifying chess openings

You can classify a list of moves

```ruby
opening = EcoClassifier.classify_moves %w( d4 d5 c4 )
opening.name
# Queen's Gambit
```

Or classify a PGN directly

```ruby
opening = EcoClassifier.classify_pgn "1.e4 e5 2.f4"
opening.name
# King's Gambit
```


## License

MIT
