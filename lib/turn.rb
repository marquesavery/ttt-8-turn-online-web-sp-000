def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if board[index] == "X" || board[index] == "O"
    false
  elsif board[index] == " " || board[index] == ""
    true
    puts "here"
  else index > 8 || index < 0
    false
  end
end

def input_to_index(user_input)
  converted_input = user_input.to_i
  index = converted_input - 1
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else board[index] == "X" || board[index] == "O"
    true
  end
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
end
