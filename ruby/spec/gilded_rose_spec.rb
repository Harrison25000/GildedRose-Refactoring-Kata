require './gilded_rose.rb'

describe GildedRose do

  let(:shop) {GildedRose.new}
  let(:item) {Item}
  let (:update) {UpdateQuality}

  it 'item refers to the Item class' do
    shop.add_item('bob', 3, 20)
    expect(shop.array).to include('bob', 3, 20)
  end

  it 'change sell_in & quality for Aged Brie' do
    shop.add_item('Aged Brie', 3, 20)
    shop.update_quality
    expect(shop.array).to include('Aged Brie', 2, 21)
  end

  it "doesn't change anything else" do
    shop.add_item('Brie Larson', 9, 210)
    shop.update_quality
    expect(shop.array).to include('Brie Larson', 9, 210)
  end

end
