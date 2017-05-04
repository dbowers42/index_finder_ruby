require_relative 'spec_helper'
require_relative '../index_finder'

TestExample = Struct.new(:input, :output)

TEST_DATA_WITH_UNIQUE_ITEMS = [
    TestExample.new(['A'], ['A', 0]),
    TestExample.new(%w(A B C A C), ['B', 1]),
    TestExample.new(%w(A A B B C), ['C', 4]),
    TestExample.new(%w(A B A C A), ['B', 1]),
    TestExample.new(%w(A B B B), ['A', 0]),
    TestExample.new(%w(B B B A), ['A', 3])
]

TEST_DATA_WITHOUT_UNIQUE_ITEM = %w(A B C C B A)

describe IndexFinder do
  describe '#find_index' do

    it 'Finds the first unique item in a array' do
      TEST_DATA_WITH_UNIQUE_ITEMS.each do |example|
        expect(IndexFinder.find_index(example.input)).to match_array(example.output)
      end
    end

    it 'Returns nil if the array is empty' do
      expect(IndexFinder.find_index([])).to be(nil)
    end

    it 'Returns nil if no item is unique' do
      expect(IndexFinder.find_index(TEST_DATA_WITHOUT_UNIQUE_ITEM)).to be(nil)
    end
  end
end