require 'checkout'

RSpec.describe Checkout do
  let(:checkout) { described_class.new }

  describe '#scan' do
    it 'can store an item' do
      checkout.scan('A')
      expect(checkout.basket).to eq(['A'])
    end
  end
  describe '#total' do
    it 'can calculate the total price of one item' do
      checkout.scan('A')
      expect(checkout.total).to eq(50)
    end
    it "can calculate the total price of several items without deals" do
      checkout.scan('A')
      checkout.scan('B')
      checkout.scan('C')
      checkout.scan('D')
      expect(checkout.total).to eq(115)
    end
    it "can calculate total price including deals for A" do
      checkout.scan('A')
      checkout.scan('A')
      checkout.scan('A')
      expect(checkout.total).to eq(130)
    end
    it "can calculate total price including deals for B" do
      checkout.scan('B')
      checkout.scan('B')
      expect(checkout.total).to eq(45)
    end
    it "can calculate total price for a mixture of deals" do
      checkout.scan('A')
      checkout.scan('B')
      checkout.scan('A')
      checkout.scan('A')
      checkout.scan('B')
      checkout.scan('C')
      expect(checkout.total).to eq(195)
    end
  end
end
