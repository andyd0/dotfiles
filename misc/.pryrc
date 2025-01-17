# frozen_string_literal: true

Pry.config.color = true
Pry.config.pager = false
Pry.config.auto_indent = true
Pry.config.correct_indent = true

Pry.config.prompt = [proc { 'input> ' },
                     proc { '     | ' }]

begin
  require 'awesome_print'
  AwesomePrint.pry!
rescue StandardError
  puts 'awesome_print not available'
end

Pry.commands.alias_command 'wai', 'whereami'
Pry.commands.alias_command 'epn', 'exit-program'

Pry::Commands.command /^$/, 'repeat last command' do
  _pry_.run_command Pry.history.to_a.last
end
