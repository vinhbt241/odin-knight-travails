class KnightTravails
  KNIGHT_MOVES = [[-1, -2], [-1, 2], [1, -2], [1, 2], [-2, -1], [-2, 1], [2, -1], [2, 1]]

  attr_reader :board

  def initialize()
    @board = Array.new(8) { Array.new(8, 0) }
  end

  # Build function that take one coordinate and return the travel cost from this coordinate
  # to every single point on the board

  def knight_moves(begin_square, end_square)

  end
end

game = KnightTravails.new()

p game.board


