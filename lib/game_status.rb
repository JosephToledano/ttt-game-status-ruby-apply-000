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

def won?(board)
  WIN_COMBINATIONS.each do |i|
    win_index_1 = WIN_COMBINATIONS[0]
    win_index_2 = WIN_COMBINATIONS[1]
    win_index_3 = WIN_COMBINATIONS[2]
    win_index_4 = WIN_COMBINATIONS[3]
    win_index_5 = WIN_COMBINATIONS[4]
    win_index_6 = WIN_COMBINATIONS[5]
    win_index_7 = WIN_COMBINATIONS[6]
    win_index_8 = WIN_COMBINATIONS[7]

    position_1 = board[win_index_1] # load the value of the board at win_index_1
    position_2 = board[win_index_2] # load the value of the board at win_index_2
    position_3 = board[win_index_3] # load the value of the board at win_index_3
    position_4 = board[win_index_4] # load the value of the board at win_index_3
    position_5 = board[win_index_5] # load the value of the board at win_index_3
    position_6 = board[win_index_6] # load the value of the board at win_index_3
    position_7 = board[win_index_7] # load the value of the board at win_index_3
    position_8 = board[win_index_8] # load the value of the board at win_index_3

    if position_1 == "X" && position_2 == "X" && position_3 == "X" || position_1 == "O" && position_2 == "O" && position_3 == "O" 
      return win_combination # return the win_combination indexes that won.
    else
      false

    end
  end
end
