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
