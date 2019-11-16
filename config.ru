require_relative "./application.rb"

run Proc.new { |env| ['200', {'Content-Type' => 'text/html'}, ["Hello <em>World</em>!"]] }
run Application.new