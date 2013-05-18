describe "#ftoc" do
  it "converts freezing temperature" do
    ftoc(32).should == 0
  end
end

def ftoc(f)
  ((f - 32) / 1.8).round(1)
end

describe "#ctof" do
  it "converts freezing temperature" do
    ctof(0).should == 32
  end
end

def ctof(c)
  ((c * 1.8) + 32).round(1)
end


  
