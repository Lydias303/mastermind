gem 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require_relative 'test_helper'
require 'cli'

class CLITest < Minitest::Test
  def test_user_can_quit
    cli = CLI.new(nil, nil)
    cli.stub :command, 'q' do
      assert cli.quit?
    end
  end

  def test_user_can_play
    cli = CLI.new(nil, nil)
    cli.stub :command, 'p' do
      assert cli.play?
    end
  end

  def test_user_can_view_instructions
    cli = CLI.new(nil,nil)
    cli.stub :command, 'i' do
      assert cli.instructions?
      refute cli.play?
    end
  end
end
