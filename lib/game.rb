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
    until quit? || won?
      @player_guess = @instream.gets.chomp.chars
      case
      when quit?              then  outstream.puts message.are_you_sure_quit.green
      when too_long?          then  outstream.puts message.too_long.red
      when too_short?         then  outstream.puts message.too_short.red
      when invalid_colors?    then  outstream.puts message.invalid_guess.red
      when won?               then  outstream.puts message.won.magenta
      else feedback
      end
    end
  end

  def quit?
    @player_guess == ["q"]
  end

  def feedback
    color_count    = MatchCheck.color_count(player_guess, solution)
    position_count = MatchCheck.position_count(player_guess, solution)
    increase_guess_counter
    outstream.puts message.guess_stats(color_count, position_count, guess_counter)
  end

  def too_long?
    ValidateGuess.new(@player_guess).too_long?
  end

  def too_short?
    ValidateGuess.new(@player_guess).too_short?
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
