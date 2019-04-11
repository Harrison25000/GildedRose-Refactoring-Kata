class GildedRose

  attr_accessor :items, :array

  def add_item(name, sell_in, quality)
    item = Item.new(name, sell_in, quality)
    @array = []
    @array.push(name, sell_in, quality)
  end

  def update_quality
    if @array[0] == "Aged Brie" || @array[0] == "Backstage passes" && @array[1] !=0 && @array[2] !=50
      @array[1] -= 1
      @array[2] += 1
    else
      return "You're a failure"
    end
    
  end

end

class Item
  attr_accessor :name, :sell_in, :quality

  def initialize(name, sell_in, quality)
    @name = name
    @sell_in = sell_in
    @quality = quality
  end

  def to_s()
    "#{@name}, #{@sell_in}, #{@quality}"
  end

end
