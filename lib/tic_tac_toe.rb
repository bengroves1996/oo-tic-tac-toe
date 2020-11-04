class TicTacToe
    WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[6,4,2]]
        def initialize(board = nil)
        @board = board || Array.new(9, " ")
        end
  
    def current_player
      turn_count % 2 == 0 ? "X" : "O"
    end
  
    def turn_count
      @board.count{|token| token == "X" || token == "O"}
    end
  
    def display_board
      puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
      puts "-----------"
      puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
      puts "-----------"
      puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    end

    def input_to_index(input)
        input = input.strip
        spot = (input.to_i) - 1
    end 

    def move(spot,mark = "X")
        @board[spot] = mark
    end 

    def position_taken?(spot)
        if @board[spot] == "" ||  @board[spot] == " " ||  @board[spot] == nil
            return false
          else
            true
        end
    end 

    def valid_move?(spot)
      if position_taken?(spot) == false
        @board = @board[spot]
      else 
        return true
      end
    end 

    def turn
    input = gets.strip
    index_x = input_to_index(input)
    check = valid_move?(index_x)
    if check == true
      turn(@board)
     end
    if check == false 
      if current_player == true
          move(spot, mark = "X")
          display_board(@board)
      else 
          move(spot,"O")
          display_board(@board)
      end 
     end 

    end 


  end 