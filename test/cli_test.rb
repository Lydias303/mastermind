require_relative 'test_helper'
require 'cli'

class CLITest < Minitest::Test
  def test_user_can_quit
    cli = CLI.new(nil, nil)
    cli.stub :command, 'q' do
      assert cli.quit?
      refute cli.play?
      refute cli.instructions?
    end
  end

  def test_user_can_play
    cli = CLI.new(nil, nil)
    cli.stub :command, 'p' do
      assert cli.play?
      refute cli.quit?
      refute cli.instructions?
    end
  end

  def test_user_can_view_instructions
    cli = CLI.new(nil,nil)
    cli.stub :command, 'i' do
      assert cli.instructions?
      refute cli.play?
      refute cli.quit?
    end
  end
end
