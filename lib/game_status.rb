# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5], # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left column
  [1,4,7], # Middle columns
  [2,5,8],  # Right Column
  [0,4,8], # Diagonal Left-to-Right
  [2,4,6] # Diagonal Right-to_Left
]

#Won? Method
#Checking to see if somebody won and displaying the board
def won?(board)
winner = []
empty_board = board.all? {|x| x == " "}
WIN_COMBINATIONS.each do |sub_array|
    if empty_board || full?(board)
      return false
    elsif sub_array.all? { |value| board[value] =="X" } || sub_array.all? { |value| board[value] =="O" }
      winner = sub_array
    end
  end
  winner
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
