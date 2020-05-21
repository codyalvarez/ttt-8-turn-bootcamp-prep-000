def display_board(board)
     puts " #{board[0]} | #{board[1]} | #{board[2]} "
     puts "-----------"
     puts " #{board[3]} | #{board[4]} | #{board[5]} "
     puts "-----------"
     puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  input = user_input.to_i
  input - 1
end

def valid_move?(board, index)
  if board[index] == 1, 8 || board[index] == "X" || board[index] == "O"
  else
    false
  end

end

def move
end

def turn
end
