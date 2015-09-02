require_relative "calculator"

describe Calculator do
  
  it "should be able to do addition" do
    expect(Calculator.basic(3, 6, "+")).to eq 3+6
  end

  it "should be able to do subtraction" do
    expect(Calculator.basic(8, 190, "-")).to eq 8-190
  end

  it "should be able to do multiplication" do
    expect(Calculator.basic(12, 34, "*")).to eq 12*34
  end

  it "should be able to do division" do
    expect(Calculator.basic(73, 4, "/")).to eq (73/4).to_f
  end


end