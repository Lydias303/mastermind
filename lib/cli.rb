require 'message'
require 'game'

class CLI
  attr_reader :instream, :outstream, :command, :message

  def initialize(instream, outstream)
    @instream = instream
    @outstream = outstream
    @command = ""
    @message = Message.new

  end

  def call
    outstream.puts message.intro_message
    until quit?
      @command = instream.gets.strip
      process_initial_commands
    end
    #outstream.puts message.end_of_game
  end

  private

  def process_initial_commands
    case
    when play?
      outstream.puts message.play
      game = Game.new(instream, outstream, message)
      game.play
    when instructions?
      outstream.puts message.instructions
    when quit?
      outstream.puts message.end_of_game
    else
      outstream.puts message.invalid_message
      # else outsream.puts message.end_of_game
    end
  end

  def play?
    command == "p"
  end

  def instructions?
    command == "i"
  end

  def quit?
    command == "q" || command == "quit"
  end
end