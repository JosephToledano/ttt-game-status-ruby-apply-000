# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,4,8], # Diagonal Left-to-Right
  [2,4,6], # Diagonal Right-to_Left
  [0,3,6], # Left column
  [1,4,7], # Middle columns
  [2,5,8]  # Right Column
]

#Won? Method
#Checking to see if somebody won and displaying the board
def won?(board)
  WIN_COMBINATIONS.each {|winning_combination|
    win_index_0 = winning_combination[0]
    win_index_1 = winning_combination[1]
    win_index_2 = winning_combination[2]


    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3

    # Checking to see if there's a winning combination and representing the winning indices
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combination

    elsif position_1 == "O" && position_2 == "O" && position_3 == "O"
       return win_combination
     end
   }
   return false
 end

 #Checking to see if every space on the board is taken
 def full?(board)
   board.all? {|index| index = "X" || index = "O"}
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
 def winner (board)
   index = []
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
