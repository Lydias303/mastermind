lib_dir = File.expand_path('lib', __dir__)  # => "/Users/lydiashafer/Desktop/Mastermind.rb/lib"
$LOAD_PATH.unshift(lib_dir)                 # => ["/Users/lydiashafer/Desktop/Mastermind.rb/lib", "/Users/lydiashafer/.rvm/gems/ruby-2.1.3/gems/seeing_is_believing-2.1.4/lib", "/Users/lydiashafer/.rvm/rubies/ruby-2.1.3/lib/ruby/site_ruby/2.1.0", "/Users/lydiashafer/.rvm/rubies/ruby-2.1.3/lib/ruby/site_ruby/2.1.0/x86_64-darwin14.0", "/Users/lydiashafer/.rvm/rubies/ruby-2.1.3/lib/ruby/site_ruby", "/Users/lydiashafer/.rvm/rubies/ruby-2.1.3/lib/ruby/vendor_ruby/2.1.0", "/Users/lydiashafer/.rvm/rubies/ruby-2.1.3/lib/ruby/vendor_ruby/2.1.0/x86_64-darwin14.0", "/Users/lydiashafer/.rvm/rubies/ruby-2.1.3/lib/ruby/vendor_ruby", "/Users/lydiashafer/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0", "/Users/lydiashafer/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/x86_64-darwin14.0"]

require 'cli'
require 'pry'                              # ~> SyntaxError: /Users/lydiashafer/Desktop/Mastermind.rb/lib/message.rb:38: syntax error, unexpected end-of-input, expecting keyword_end

CLI.new($stdin, $stdout).call

# ~> SyntaxError
# ~> /Users/lydiashafer/Desktop/Mastermind.rb/lib/message.rb:38: syntax error, unexpected end-of-input, expecting keyword_end
# ~>
# ~> /Users/lydiashafer/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
# ~> /Users/lydiashafer/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
# ~> /Users/lydiashafer/Desktop/Mastermind.rb/lib/cli.rb:1:in `<top (required)>'
# ~> /Users/lydiashafer/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
# ~> /Users/lydiashafer/.rvm/rubies/ruby-2.1.3/lib/ruby/2.1.0/rubygems/core_ext/kernel_require.rb:55:in `require'
# ~> /Users/lydiashafer/Desktop/Mastermind.rb/mastermind.rb:3:in `<main>'
