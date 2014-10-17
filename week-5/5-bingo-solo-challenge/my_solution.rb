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
#     use getter methods for each instace variable of each column
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

  def b_column
    puts "B"
    puts @b_column
  end

  def i_column
    puts "I"
    p @i_column
  end

  def n_column
    puts "N"
    p @n_column
  end

  def g_column
    puts "G"
    p @g_column
  end

  def o_column
    puts "O"
    p @o_column
  end

  def display
    puts "#{@column} #{@num}"
    puts " B I N G O"
    @bingo_board.each do |rows|
    p rows.map { |col| col }.join(" ")
  end
  end
end


# Release 3: Refactored Solution



# Release 2: DRIVER TESTS GO BELOW THIS LINE

game = BingoBoard.new
game.generator
game.display
game.b_column

#Im really stuck here because i dont know how to test if this is the generator is dynamic ?





# Release 4: Reflection
# # the most dificult part of this challenge was creating the coulums of the bingo board, i found a relatively simple
# solution for that i i definetely think that there most be an easier way to do that. I also had to be very carefull
# the index for that i was passing to replace and element for the X was the correct one, for that i had to make several
# drawings of the board in a notebook and verified that the index numbers that i was using where the correct ones. I
# would also like that all the column getter methods would be simplifiedby using the attr finctionality but i think
# thats not posible to accomplish as there is custumization the each of those variables. Finally i wasent able to Create
# functional dirver test code for this challenge i did test that result was what i expect on the terminal and indeed it
# is its not exactly driver test code.

