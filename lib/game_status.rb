# Helper Method
def position_taken?(board, index)
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

#Won? Method
#Checking to see if somebody won and displaying the board
def won?(board)
  WIN_COMBINATIONS.each do |winner_combo|
      if board[winner_combo[0]] == board[winner_combo[1]] &&
         board[winner_combo[1]] == board[winner_combo[2]] &&
         position_taken?(board, winner_combo[0])
         return true
         return winner_combo
      end
    end
  end

 #Checking to see if every space on the board is taken
 def full?(board)
  board.all? {|index| index == "X" || index == "O"}
end

 #Checking to see if there's a draw
 def draw?(board)
   if full?(board) && !(won?(board))
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
