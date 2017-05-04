## Index Finder in Ruby
This repository is an exercise in creating a function that allows you to
determine the first unique item in a array. To install just clone the repository
got to the project folder and execute ```bundle```

## Running
simply running ```ruby main.rb``` will run some hard coded examples

## Running Interactively

run ```bundle console```

then you can try the following

```
irb> require './index_finder.rb'
=> true
```

```
irb> IndexFinder.find_index(["A", "B", "C", "A", "C"])
=> ["B", 1]

irb> IndexFinder.find_index([])
=> nil

irb> IndexFinder.find_index(["A", "A", "A"])
=> nil
```

## Testing
```
rspec spec
```