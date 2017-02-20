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
  end

stack = Stack.new

stack.push(23)
stack.push(19)
stack.push(2)

puts stack.pop
