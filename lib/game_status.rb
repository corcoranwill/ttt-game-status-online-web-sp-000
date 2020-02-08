# Helper Method
def position_taken?(board, index)
  # returns false if position is NOT taken == yes, taken
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]


# Check to see if there was a win
def won?(board)
  WIN_COMBINATIONS.detect do |win_combo|
    position_1 = board[win_combo[0]]
    position_2 = board[win_combo[1]]
    position_3 = board[win_combo[2]]

    position_1 == "X" && position_2 == "X" && position_3 == "X" ||
    position_1 == "O" && position_2 == "O" && position_3 == "O"
  end
end



# def won?(board)
#   WIN_COMBINATIONS.each do |win_combination|
#     all_taken = win_combination.any?{|p| position_taken?(board,p)}
#       if all_taken == true
#         if all_taken.all? == "X"
#           return "X"
#         elsif all_taken.all? == "O"
#           return "O"
#         end
#       elsif
#         return false
#       end
#   end
# end

def full?(board)
  board.any?{|p| position_taken?(board, p)}
end

def draw?(board)
  if won? == false && full? == full?
    return true
  elsif won? == false && full? == false
    return false
  end
end

def over?(board)
  if won? == true || draw? == true || full? == true
    return true
  end
end

def winner(board)
  if winner = won?(board)
    board[winner[0]]
  end
end
