class Message


  def instructions
    " The computer will select a set of four colors at random, duplicates may be possible.\n Your task will be to guess the colors and order in which they are placed.\n You will be prompted to enter your guess using the first letter of the color, for example [rrbg].\n After each guess the correct number of colors guessed, regardless of position, will be messaged.\n The number of correctly placed colors will also be messageed.\n Using that information and multiple guesses you will be able to discover the answer and win!"
  end

  def guess_stats(color_count, position_count, guess_counter)
    "You got #{color_count} correct colors and #{position_count} correct positions and you have made #{guess_counter} guess"
  end

  def won
    "YOU WON!!!"
  end

  def end_of_game
    "End of game!"
  end

  def are_you_sure_quit
    "Are you sure you want to quit? Enter (q) to quit or (p) to play again!"
  end

  def player_guess_count
    "You have made #{player_guess}"
  end

  def intro_message
    "Welcome to MASTERMIND\nWould you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def game_start_message
    "Enter your guess!"
  end

  def too_short
    "Your guess is too short"
  end


  def too_long
    "Your guess is too long"
  end

  def invalid_message
    "Invalid Message! Please input (p)lay (i)nstructions or (q)uit"
  end

  def invalid_guess
    "Invalid response. Guess from the colors: (r)ed, (b)lue, (g)reen, (y)ellow."
  end

  def message_after_instructions
    "Would you like to (p)lay or (q)uit?"
  end

  def play
    "I have generated a beginner sequence with four elements made up of: (r)ed,\n(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time to end the game.\nWhat's your guess?"
  end

end
