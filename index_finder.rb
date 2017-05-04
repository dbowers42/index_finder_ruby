# This module is an exercise in creating a function that allows you to
# determine the first unique item in a array.
module IndexFinder
  # This functions takes a array of items and determines the first unique item in
  # the array. If an item is found a 2 item array containing the unique item and
  # its index is returned. Returns nil If no item is found or the array is empty.
  def self.find_index(items)
    buckets = {}

    items.each_with_index do |value, index|
      unless buckets.key?(value)
        buckets[value] = []
      end

      buckets[value] << index
    end

    filtered = buckets.select { |_k, v| v.count == 1 }
    mapped = filtered.map {|pair| pair.flatten}
    sorted = mapped.sort {|p1, p2| p1[1] <=> p2[1]}

    sorted.first
  end
end

