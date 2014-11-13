require 'sequence'
require 'match_check'
require 'validate_guess'
require 'colorize'
class Game

  attr_reader :instream, :outstream, :message, :solution, :player_guess, :color_count, :guess_counter


  def initialize(instream, outstream, message)
    @solution = Sequence.new.solution
    @player_guess = ""
    @instream = instream
    @outstream = outstream
    @message = message
    @guess_counter = 0
  end

  def play
    puts @solution.join
    until quit? || won?
      @player_guess = @instream.gets.chomp.chars
      if quit?
        outstream.puts message.are_you_sure_quit.green
      elsif too_long?
        outstream.puts message.too_long.red
      elsif too_short?
          outstream.puts message.too_short.red
      elsif invalid_colors?
        outstream.puts message.invalid_guess.red
      elsif won?
        outstream.puts message.won.magenta
      else
        color_count    = MatchCheck.color_count(player_guess, solution)
        position_count = MatchCheck.position_count(player_guess, solution)
        increase_guess_counter
        outstream.puts message.guess_stats(color_count, position_count, guess_counter)
      end
    end
  end
  def quit?
    @player_guess == ["q"]
  end

  def too_long?
    ValidateGuess.new(@player_guess).too_long?
  end

  def too_short?
    ValidateGuess.new(@player_guess).too_long?
  end

  def invalid_colors?
    !ValidateGuess.new(@player_guess).valid?
  end

  def won?
    @player_guess == @solution
  end

  def increase_guess_counter
    @guess_counter += 1
  end
end
