require 'order'
require 'take_away'
require 'order'
require 'line_item'

describe Take_away do
  let(:takeaway) { described_class.new }
  let(:order) { Order.new }
  let(:fish) { double :dish, name: 'fish', price: 10 }
  let(:coke) { double :dish, name: 'coke', price: 5 }
  let(:line_item) { LineItem.new(fish, 2) }
  let(:line_item2) { LineItem.new(coke, 2) }

  before do
    order.add_line_item(line_item)
    order.add_line_item(line_item2)
  end
  context 'Takeaway ' do
    it 'can accept an order with one item' do
         expect {takeaway.add_order(order)}.to change { takeaway.orders.count }.by(1)
    end
    it 'cannot accept an empty order' do
        my_order = Order.new
        expect {takeaway.add_order(my_order) }.to raise_error(RuntimeError)
    end

    it 'can accept payment' do
      
    end
  end
end