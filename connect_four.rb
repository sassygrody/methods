require 'pry-byebug'
# hi
class ConnectFour
  attr_accessor :board
  attr_accessor :user_input_move

  def initialize
    @board = [['0', '1', '2', '3', '4', '5'],
              ['_', '_', '_', '_', '_', '_'],
              ['_', '_', '_', '_', '_', '_'],
              ['_', '_', '_', '_', '_', '_'],
              ['_', '_', '_', '_', '_', '_'],
              ['_', '_', '_', '_', '_', '_'],
              ['_', '_', '_', '_', '_', '_'],
              ['_', '_', '_', '_', '_', '_']]

    @user_input_move = 'hi'
  end

  def display_board
    @board.each do |row|
      puts row.join(' ')
    end
    puts 'Make a move, which column?'
  end

  def make_a_move
    @user_input_move = gets.chomp
    @user_input_move = @user_input_move.to_i
    fill_verticals(@user_input_move)
  end

  # def check_valid_column_number(col_number)
  #   if col_number.between?(0, @board.length + 1)
  #     return true
  #   else
  #     "please enter a number between 0 and #{@board.length + 1 }"
  #   end
  # end

  def fill_verticals(int)
    if @board[-7][int] == 'X'
      puts 'column full!!!! choose other'
      sleep(1)
      display_board
    elsif @board[-6][int] == 'X'
      @board[-7][int] = 'X'
      display_board
    elsif @board[-5][int] == 'X'
      @board[-6][int] = 'X'
      display_board
    elsif @board[-4][int] == 'X'
      @board[-5][int] = 'X'
      display_board
    elsif @board[-3][int] == 'X'
      @board[-4][int] = 'X'
      display_board
    elsif @board[-2][int] == 'X'
      @board[-3][int] = 'X'
      display_board
    elsif @board[-1][int] == 'X'
      @board[-2][int] = 'X'
      display_board
    else
      @board[-1][int] = 'X'
      display_board
    end
  end

  # def get_column(col_num)
  #   @board.transpose[col_num]
  # end

  def horizontal_end_game?
    winning_string = @board.join('')
    if winning_string =~  /XXXX(.*)/
      puts 'You the winner'
      return true
    end
  end

  def vertical_end_game?(number)
    @int = @user_input_move.to_i
    col_string = @board.transpose[@int]
    winning_string = col_string.join('')

    if winning_string =~  /XXXX(.*)/
      display_board
      puts 'You the winner'
      return true
    end
  end

  def diagonal_end_game?
  end
end

def play_game
  @game = ConnectFour.new
  puts "NEW GAME!"
  @game.display_board
  @game.make_a_move
  input = gets.chomp

  until @game.horizontal_end_game? || @game.vertical_end_game?(input)
    @game.make_a_move
  end
end

play_game
# game = ConnectFour.new
# game.display_board
# game.create_col_array(0)
