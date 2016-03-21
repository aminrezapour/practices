class BoggleSolver
  attr_accessor :board, :dictionary, :N

  def initialize(dictionary, board)
    @dictionary = dictionary
    @board = board
    @N = board.length
    @visited = Array.new(@N){Array.new(@N) {false}}
  end

  def solution
    @valid_words = []
    (0...@N).each do |i|
      (0...@N).each do |j|
        depth_first("", i, j)
      end
    end

    return "no match found!" if @valid_words.length < 1

    @valid_words
  end

  def print_board
    (0...@N).each do |i|
      (0...@N).each do |j|
        print @board[i][j] + " "
      end
      puts
    end
  end


  private
  def depth_first(str, m, n)
    return if (m < 0 || n < 0 || m >= @N || n >= @N)
    return if @visited[m][n]

    @visited[m][n] = true

    str += @board[m][n]
    if (str.length > 2)
      temp = @dictionary.bsearch { |s| str <=> s }
      @valid_words << temp unless temp.nil?
    end

    (-1..1).each do |i|
      (-1..1).each do |j|
        depth_first(str,i + m, j + n)
      end
    end

    @visited[m][n] = false

  end

end
