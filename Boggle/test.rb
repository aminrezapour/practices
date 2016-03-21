require 'rspec'
require_relative 'boggle_solver'

dictionary = []
File.readlines("dictionary.txt").map do |line|
  dictionary << line.chop
end
dictionary << "end of dictionary"
dictionary.sort!

N = 4
random_board = Array.new(N){Array.new(N)}
(0...N).each do |i|
  (0...N).each do |j|
    random_board[i][j] = ('a'..'z').to_a[rand(26)]
  end
end

fixed_board = [
    ["a", "p", "n"],
    ["m", "p", "e"],
    ["i", "l", "f"]
]

c = BoggleSolver.new(dictionary, random_board)
c.print_board
puts c.solution
