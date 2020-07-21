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
  elsif board[index] == " " || board[index] == "" || board[index] == nil
    true
  else index > 8 || index < 0
    false
  end
end

def input_to_index(user_input)
  converted_input = user_input.to_i
  index = converted_input - 1
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  until index.to_i <= 9 || index.to_i >= 1
    if valid_move?(board, index) == true
      move(board, index)
    else
      puts "Please enter 1-9:"
    end
    index = input_to_index(gets.strip)
  end
end
