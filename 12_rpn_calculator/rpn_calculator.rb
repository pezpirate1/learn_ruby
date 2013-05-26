class RPNCalculator

	def initialize
		@stack = []
	end

	def push(num)
		@stack << num
	end

  def pop
    value = @numberStack.pop
    if value.nil? 
      raise "calculator is empty"
    end
    value
  end

	def plus
		num1 = @stack.pop
		num2 = @stack.pop
		value = num2 + num1
		@stack << value	
	end

	def minus
		num1 = @stack.pop
		num2 = @stack.pop
		value = num2 - num1
		@stack << value
	end

	def times
		num1 = @stack.pop
		num2 = @stack.pop
		value = num2 * num1
		@stack << value
	end

	def divide
		num1 = @stack.pop
		num2 = @stack.pop
		value = num2.to_f / num1.to_f
		@stack << value
	end

	def value
		if @stack.size < 1
			puts "calculator is empty"
		else
			@stack.last
		end
	end
  
  def tokens str
    str.split.map do |a|
      case a
      when '+', '-', '*', '/'
        a.to_sym
      else
        a.to_i
      end
    end
  end
  
  def evaluate str
    tmpstack = []
    str.split.each do |a|
      case a
      when '+'
        tmpstack.push(tmpstack.pop.to_i + tmpstack.pop.to_i)
      when '-'
        tmpstack.push(tmpstack.pop.to_i - tmpstack.pop.to_i)
      when '*'
        tmpstack.push(tmpstack.pop.to_i * tmpstack.pop.to_i)
      when '/'
        tmpstack.push(tmpstack.pop.to_f / tmpstack.pop.to_f)
      else
        tmpstack.push(a)
      end
    end
    tmpstack.pop
  end
end