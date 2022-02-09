POSSIBLE_MOVES = [[1, 2], [-1, 2], [1, -2], [-1, -2], [2, 1], [-2, 1], [2, -1], [-2, -1]]

class Node
  attr_accessor :pos, :prev_pos

  def initialize(pos, prev_pos = nil)
    @pos = pos

    @prev_pos = prev_pos
  end
end



def knight_moves(begin_arr, end_arr)
  begin_pos = Node.new(begin_arr)

  queue = [begin_pos]
  visited = []
  path = []

  until queue.empty? 
    current_pos = queue.shift()

    if current_pos.pos == end_arr
      until current_pos.prev_pos == nil
        path << current_pos.pos

        current_pos = current_pos.prev_pos
      end

      path << current_pos.pos

      break
    end

    visited << current_pos.pos


    POSSIBLE_MOVES.each do |move|
      a, b = move
      x, y = current_pos.pos

      if ((0..7).include?(x + a) && (0..7).include?(y + b)) && (visited.include?([x + a, y + b]) == false)
        queue << Node.new([(x + a), (y + b)], current_pos)
      end
    end
  end

  return path.reverse()
end


# path = knight_moves([3, 3], [4, 3])

# puts "You make it in #{path.length - 1} moves! Here's your path:"

# path.each { |move| p move }



