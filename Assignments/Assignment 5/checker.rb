class Node
    attr_accessor :value, :next_node
    def initialize(value, next_node)
      @value = value
      @next_node = next_node
    end
end

class Stack
    def initialize
      	@first = nil
    end

    def push(value)
      	@first = Node.new(value, @first)
    end

	def pop
		value = @first.value
      	@first = @first.next_node
	  	value
	end

    def is_empty?
    	@first.nil?
    end
	
	def brackets_balanced?(string) 
    	return false if string.length < 2
    	brackets_hash = {"(" => ")", "{" => "}", "[" => "]"}
    	brackets = []
    	string.each_char do |x|
      		brackets.push(x) if brackets_hash.keys.include?(x)
      		brackets.pop if brackets_hash.values.include?(x)
    	end
    	return brackets.empty?
 	end
end

stack = Stack.new
string=gets.chomp
x=stack.brackets_balanced?(string)
if(x==1)
	puts "Matched!!!"
else
	puts "not matched!!"
end