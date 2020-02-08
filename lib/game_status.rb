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

def won?(board)
  # return false / nil if there is no win combination
  # return the winning combination indexes as an array if there is a win
  # winner() will call this method to determine who won X or O

  # ---------

  # IMPROVE UPON WHAT IS BELOW:
  # utilize position_taken?
  # be able to determine how the winner won whether the winner is X or O

  # ---------

  # WIN_COMBINATIONS.each do |win_combination|
  #     win_index_1 = win_combination[0]
  #     win_index_2 = win_combination[1]
  #     win_index_3 = win_combination[2]
  #
  #     position_1 = board[win_index_1]
  #     position_2 = board[win_index_2]
  #     position_3 = board[win_index_3]
  #
  #     if position_1 == "X" && position_2 == "X" && position_3 == "X"
  #         return win_combination
  #     else
  #       false
  #     end
  # end

  WIN_COMBINATIONS.each do |win_combination|
    all_taken = win_combination.any?{|p| position_taken?(board,p)}
      if all_taken == true
        if all_taken.all? == "X"
          return "X"
        elsif all_taken.all? == "O"
          return "O"
        end
      end
  end
end

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
  # return a token "X" or "O", depending on who won
  # utilize the methods and the return values defined above


end
