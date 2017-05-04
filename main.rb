$LOAD_PATH << '.'

require 'index_finder'

data =  [
    ['A'],
    %w(A B C A C),
    ['A', "A", "B", "B", "C"],
    %w(A B A C A),
    %w(A B B B),
    %w(B B B A),
    %w(A A A),
    %w(A B C A C),
    []
]

data.each do |example|
  puts '-' * 100
  p example
  p IndexFinder.find_index(example)
end
