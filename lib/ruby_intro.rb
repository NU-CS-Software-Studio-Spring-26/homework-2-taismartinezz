# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  total = 0
  arr.each { |n| total += n }
  total
end

def max_2_sum arr
  return 0 if arr.empty?
  sorted = arr.sort
  return sorted[0] if sorted.length == 1
  sorted[-1] + sorted[-2]
end

def sum_to_n? arr, n
  return false if arr.length < 2
  arr.each do |a|
    arr.each do |b|
      return true if a != b && a + b == n
    end
  end
  false
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  return false if s.empty?
  not_vowels = ["a", "e", "i", "o", "u"]
  first = s[0].downcase
  first.match?(/[a-z]/) && !not_vowels.include?(first)
end

def binary_multiple_of_4? s
  return false if s.empty?
  return false if s.chars.any? { |c| c != "0" && c != "1" }
  s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    sprintf("$%.2f", @price)
  end
end