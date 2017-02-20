class StackAsArray
  attr_reader :length, :top
  
  def initialize()
	@array=[]
	@top=nil
  end
  
  def push(element) 
    if (@top==nil)
      @top = 0
    else
      @top = @top + 1
    end
    @array[@top] = element
  end

  def pop
    x = @array[@top]
    if (@top==0)
      @top = nil
    else
      @top = @top - 1
    end
    return x
  end
  
  def print
  	for i in 0..@top
		puts @array[i]
	end
  end
end

stack=StackAsArray.new
stack.push(3)
stack.push(4)
stack.push(23)
stack.push(10)
stack.print
stack.pop
stack.print