# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8],
    [0, 4, 8],
    [6, 4, 2]
]

#Won? Method
#Checking to see if somebody won and displaying the board
def won?(board)
  WIN_COMBINATIONS.each {|winning_combo|
    index0 = winning_combo[0]
    index1 = winning_combo[1]
    index2 = winning_combo[2]

    position_1 = board[index0]
    position_2 = board[index1]
    position_3 = board[index2]

    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return winning_combo
    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return winning_combo
    end
  }
  return false
end


 #Checking to see if every space on the board is taken
 def full?(board)
  board.all? {|index| index == "X" || index == "O"}
end

 #Checking to see if there's a draw
 def draw?(board)
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

 #Checking to see if the game is over
 def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end

 #Showing the "X" or "O" that has won the game
 def winner(board)
   iindex = []
  index = won?(board)
  if index == false
    return nil
  else
    if board[index[0]] == "X"
      return "X"
    else
      return "O"
    end
  end
end
