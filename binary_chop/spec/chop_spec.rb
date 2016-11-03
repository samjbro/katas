require 'chop1'

RSpec.describe "chop" do

  it "should return the right values" do
    expect(chop(1, [])).to eq(-1)

    expect(chop(1, [1])).to eq(0)
    expect(chop(2, [1])).to eq(-1)

    expect(chop(1, [1,2,3,4])).to eq(0)
    expect(chop(2, [1,2,3,4])).to eq(1)
    expect(chop(3, [1,2,3,4])).to eq(2)
    expect(chop(4, [1,2,3,4])).to eq(3)
    expect(chop(5, [1,2,3,4])).to eq(-1)
    expect(chop(6, [1,2,3,4])).to eq(-1)
    expect(chop(7, [1,2,3,4])).to eq(-1)
    expect(chop(8, [1,2,3,4])).to eq(-1)

    expect(chop(1, [1,2,3,4,5])).to eq(0)
    expect(chop(2, [1,2,3,4,5])).to eq(1)
    expect(chop(3, [1,2,3,4,5])).to eq(2)
    expect(chop(4, [1,2,3,4,5])).to eq(3)
    expect(chop(5, [1,2,3,4,5])).to eq(4)
    expect(chop(6, [1,2,3,4,5])).to eq(-1)

    expect(chop(2, [1,2,3,4,5,6,7])).to eq(1)
    expect(chop(6, [1,2,3,4,5,6,7])).to eq(5)


    expect(chop(657, [*1..1000])).to eq(656)
  end

end
