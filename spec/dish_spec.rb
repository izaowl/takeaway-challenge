require 'dish'

describe Dish do
  subject { described_class.new('Rice', 2) }

  it 'is be able to create a food item' do
    expect(subject.name).to eq 'Rice'
  end

  it 'is be able to set a price for an item' do
    expect(subject.price).to eq 2
  end
end