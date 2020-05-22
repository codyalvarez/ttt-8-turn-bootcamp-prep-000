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
  if board[index] == "X" || board[index] == "O" || !index.between?(0, 8)
    return false
  else
    return true
  end
end

def move(board, index, token = "X")
  board[index] = token
end

# def turn_count
#   counter = 0
#
#   board.each do |turn|
#     if turn == "X" || turn == "O"
#       counter += 1
#       puts "#{counter}"
#     end
#   end
#
#   counter
# end

# def current_player
#   turn_count.even? == true ? "X" : "O"
# end

def turn(user_input)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(user_input) == true
  #   move(index, value = "X")
     puts display_board
  # elsif valid_move?(index) == true && current_player == "O"
  #   move(index, value = "O")
  #   puts display_board
  elsif valid_move?(user_input) == false
     puts "Please enter 1-9:"
     input = gets.chomp
   else
     puts "Please enter 1-9:"
     input = gets.chomp
   end
end
