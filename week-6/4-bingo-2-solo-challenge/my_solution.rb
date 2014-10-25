# # U2.W6: Create a Bingo Scorer (SOLO CHALLENGE)


# # 1. Pseudocode

#  sample_board =[[1, 44, 71, 8, 88],
#                [22, 2, 75, 65, 73],
#                 [83, 85, 3, 89, 57],
#                 [25, 31, 96, 4, 51],
#                 [75, 70, 54, 76, 5]]





# # 2. Initial Solution

class BingoBoard
  @@calls = []
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
    @@calls << [@column, @num]
  end

  def mark
    @@calls.each do |column, num|
      if (column == "B" and @b_column.include?(num))
        mark = @b_column.index(num)
        @bingo_board[mark][0]="X"
        @b_column[mark] = "X"
      elsif (column == "I" and @i_column.include?(num))
        mark = @i_column.index(num)
        @bingo_board[mark][1]="X"
        @i_column[mark] = "X"
      elsif (column == "N" and @n_column.include?(num))
        mark = @n_column.index(num)
        @bingo_board[mark][2]="X"
        @n_column[mark] = "X"
      elsif (column == "G" and @g_column.include?(num))
        mark = @g_column.index(num)
        @bingo_board[mark][3]="X"
        @g_column[mark] = "X"
      elsif (column == "O" and @o_column.include?(num))
        mark = @o_column.index(num)
        @bingo_board[mark][4]="X"
        @o_column[mark] = "X"
      end
    end
  end

  def bingo
    case
    when  (@b_column.uniq.length == 1 || @i_column.uniq.length == 1 || @n_column.uniq.length == 1 || @g_column.uniq.length == 1 || @o_column.uniq.length == 1)
      puts "BINGO!"
    when (@bingo_board[0].uniq.length == 1 || @bingo_board[1].uniq.length == 1 || @bingo_board[2].uniq.length == 1 || @bingo_board[3].uniq.length == 1 || @bingo_board[4].uniq.length == 1)
      puts "BINGO!"
    when (@bingo_board[0][0] == "X" and @bingo_board[1][1] == "X" and @bingo_board[2][2] == "X" and @bingo_board[3][3] == "X" and @bingo_board[4][4] == "X")
      puts "BINGO!"
    when (@bingo_board[0][4] == "X" and @bingo_board[1][3] == "X" and @bingo_board[2][2] == "X" and @bingo_board[3][1] == "X" and @bingo_board[4][0] == "X")
      puts "BINGO!"
    else
      puts "No luck"
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
    puts "Last call #{@column} #{@num}"
    @bingo_board.each do |rows|
    p rows.map { |col| col }.join(" ")
  end

  def return_global_calls
    return @@calls
  end
end
end

# # 4. Refactored Solution






# # 3. DRIVER TESTS GO BELOW THIS LINE
game = BingoBoard.new
500.times do game.generator end
game.mark
game.display
game.bingo

# # create driver test code to retrieve a value at a coordinate here:
# # implement tests for each of the methods here:


# # 5. Reflection

# This Bingo challenge gets harder and harder , i have learn a lot from it , the most cool thing that i learn
# from this second iteration, was that to store all the calls for each combo i could use a @@class variables
# to store that infromation , since that was the same for all instances of the class. I also found the uniq method
# that help me check is an array was completly fill with the same element repeated. I still have to refactor a lot
# of this code , but i dont want to do it right way as i feel that i can make it much better when i learn a little
#   bit more.


