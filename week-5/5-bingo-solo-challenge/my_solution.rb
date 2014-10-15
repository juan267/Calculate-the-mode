# U2.W5: A Nested Array to Model a Bingo Board SOLO CHALLENGE


# Release 0: Pseudocode
# Outline:

# # Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
#     @bingo_column = ["B","I","N","G","O"]
#     def generator
#     @column = @bingo_column.sample
#     @num = rand(1..100)
#     end

# # Check the called column for the number called.
#    if (@column == "B || I || N || G || 0" and @b_column.include?(@num))

# # If the number is in the column, replace with an 'x'
#   mark = @b_column.index(@num)
#   @bingo_board[mark][0]="X"
# # Display a column to the console
#     p @b_column = [@bingo_board[0][0], @bingo_board[1][0],@bingo_board[2][0],@bingo_board[3][0],@bingo_board[4][0]]
#     p @i_column = [@bingo_board[0][1], @bingo_board[1][1],@bingo_board[2][1],@bingo_board[3][1],@bingo_board[4][1]]
#     p @n_column = [@bingo_board[0][2], @bingo_board[1][2],@bingo_board[2][2],@bingo_board[3][2],@bingo_board[4][2]]
#     p @g_column = [@bingo_board[0][3], @bingo_board[1][3],@bingo_board[2][3],@bingo_board[3][3],@bingo_board[4][4]]
#     p @o_column = [@bingo_board[0][4], @bingo_board[1][4],@bingo_board[2][4],@bingo_board[3][4],@bingo_board[4][4]]

# # Display the board to the console (prettily)
#    @bingo_board.each do |rows|
#     p rows.map { |col| col }.join(" ")

# # Release 1: Initial Solution

class BingoBoard

  def initialize
    # populates an 5x5 array with numbers 1-100
    # to make this accessible across your methods within this class, I made
    # this an instance variable. @ = instance variable
    @bingo_board = Array.new(5) {Array(5.times.map{rand(1..100)})}
    @b_column = [@bingo_board[0][0], @bingo_board[1][0],@bingo_board[2][0],@bingo_board[3][0],@bingo_board[4][0]]
    @i_column = [@bingo_board[0][1], @bingo_board[1][1],@bingo_board[2][1],@bingo_board[3][1],@bingo_board[4][1]]
    @n_column = [@bingo_board[0][2], @bingo_board[1][2],@bingo_board[2][2],@bingo_board[3][2],@bingo_board[4][2]]
    @g_column = [@bingo_board[0][3], @bingo_board[1][3],@bingo_board[2][3],@bingo_board[3][3],@bingo_board[4][4]]
    @o_column = [@bingo_board[0][4], @bingo_board[1][4],@bingo_board[2][4],@bingo_board[3][4],@bingo_board[4][4]]
    @bingo_column = ["B","I","N","G","O"]
  end


  def generator
    @column = @bingo_column.sample
    @num = rand(1..100)
    if (@column == "B" and @b_column.include?(@num))
      mark = @b_column.index(@num)
      @bingo_board[mark][0]="X"
    elsif (@column == "I" and @i_column.include?(@num))
      mark = @i_column.index(@num)
      @bingo_board[mark][1]="X"
    elsif (@column == "N" and @n_column.include?(@num))
      mark = @n_column.index(@num)
      @bingo_board[mark][2]="X"
    elsif (@column == "G" and @g_column.include?(@num))
      mark = @g_column.index(@num)
      @bingo_board[mark][3]="X"
    elsif (@column == "O" and @o_column.include?(@num))
      mark = @o_column.index(@num)
      @bingo_board[mark][4]="X"
    end
  end
  def display
    puts "#{@column} #{@num}"
    puts " B I N G O"
    @bingo_board.each do |rows|
    p rows.map { |col| col }.join(" ")
  end
  end
end

game = BingoBoard.new
a = game.generator
a = game.display


# Release 3: Refactored Solution



# Release 2: DRIVER TESTS GO BELOW THIS LINE





# Release 4: Reflection


