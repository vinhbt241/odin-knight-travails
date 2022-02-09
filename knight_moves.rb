POSSIBLE_MOVES = [[1, 2], [-1, 2], [1, -2], [-1, -2], [2, 1], [-2, 1], [2, -1], [-2, -1]]

def knight_moves(begin_pos, end_pos, visited = [], track = [end_pos])
  return track.reverse() if begin_pos == end_pos

  queue = [begin_pos]

  until queue.empty?
    current_pos = queue.shift()
    
    visited << current_pos

    POSSIBLE_MOVES.each do |move|
      a, b = move
      x, y = current_pos

      if [x + a, y + b] == end_pos
        track << current_pos

        return knight_moves(begin_pos, current_pos, [], track)
      else
        queue << [x + a, y + b] if (((0..7).include?(x + a)) && ((0..7).include?(y + b)))
      end
    end

  end
end


path =  knight_moves([0, 0], [3, 3])

p path

puts "You make it in #{path.length - 1} moves! Here's your path:"

path.each { |move| p move }



