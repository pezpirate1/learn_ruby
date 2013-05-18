def add(x,y)
  x + y
end

def subtract(x,y)
  x - y
end

def sum(arr)
  arr.inject(0) { |sum, item| sum + item }
end

describe "multiply" do
  it "multiplies two numbers" do
    multiply([3,5]).should == 15
  end
  it "multiplies several numbers" do
    multiply([5,5,5]).should == 125
  end
end

def multiply(arr)
  arr.inject(1) { |product, item| product * item }
end

describe "power" do
  it "raises one number to the power of another number" do
  end
end

def power(x,y)
  x ** y
end

describe "factorial" do
  it "computes the factorial of 0" do
  end
  it "computes the factorial of 1" do
  end
  it "computes the factorial of 2" do
  end
  it "computes the factorial of 5" do
  end
  it "computes the factorial of 10" do
  end
end

def factorial(x)
  solution = 1
  if x <= 1
    1
  else
    x.downto(1) do |num|
      solution *= num
    end
    solution
  end
end

  