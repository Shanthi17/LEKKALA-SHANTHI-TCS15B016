#'def' starts the definition of a method, and 'end' ends it - no cute little curly braces.
def welcome(name)
   puts "hello #{name}"
end
puts "What is your name?"
$name = STDIN.gets
welcome($name)