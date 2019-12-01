class Array
  def quicksort
    return [] if empty?

    pivot = delete_at(rand(size))
    left, right = partition(&pivot.method(:>))

    return *left.quicksort, pivot, *right.quicksort
  end
end

p [1, 2, 4, 2, 3, 1, 6, 8, 3, 2, 7, 9, 0, 1, 4, 6, 2, 56, 2].quicksort
