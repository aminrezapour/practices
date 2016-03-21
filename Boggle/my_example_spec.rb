require 'rspec'
require_relative 'boggle_solver'

N = 3 # boggle board NxN

$dictionary = []
$random_board = Array.new(N){Array.new(N)}
$fixed_board = nil

describe "Boggle class solution method" do
  before do
    @c = BoggleSolver.new([], $fixed_board)
  end
  
  it "should return 'no match found!' for no solution" do
    expect(@c.solution).to eq "no match found!"
  end

  describe "with dictionary" do
    before do
      @c.dictionary = $dictionary
      @solution = @c.solution
    end

    it "should return apple" do
      expect(@solution.include?("catcher")).to eq true
    end

    it "should return apple" do
      expect(@solution.include?("cat")).to eq true
    end

    it "should return apple" do
      expect(@solution.include?("her")).to eq true
    end

  end

end


# initialzie_variables

  # read the dictionary
  File.readlines("dictionary.txt").map do |line|
    $dictionary << line.chop
  end
  $dictionary << "end of dictionary"
  $dictionary.sort!
  # edit manually
  $fixed_board = [["c", "a", "n"],
                  ["r", "c", "t"],
                  ["e", "h", "f"]
                 ]
  # random board
  (0...N).each do |i|
    (0...N).each do |j|
      $random_board[i][j] = ('a'..'z').to_a[rand(26)]
    end
  end
