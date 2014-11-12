# require_relative 'message'
# require_relative 'sequence'
#
# class Game
#   #attr_reader :instream, :outsream
#
#   def initialize(instream, outstream, message)
#     @instream = instream
#     @outstream = outstream
#     @player_guess = ""
#     @command = ""
#     @message = message.new
#     @user_guess_count = 0
#   end
#
#   def call
#     outstream.puts message.intro_message
#     until win? || quit?
#       @command = instream.gets.strip
#       process_initial_commands
#     end
#     outstream.puts.message
#   end
#
#   def won?
#     player_guess == solution
#   end
#
#   def quit?
#     command = "q" || command = "quit"
#   end
# end
