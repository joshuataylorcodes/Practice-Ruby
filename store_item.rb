class Item
  attr_accessor :item, :color, :style, :material

  def initialize(input_options)
    @item = input_options[:item]
    @color = input_options[:color]
    @style = input_options[:style]
    @material = input_options[:material]
  end

  def print_item
    puts "The New Item we are selling is #{color} #{item} made from #{material}. The style is #{style}."
  end
end

shirts = Item.new({ item: "shirt", color: "black", style: "athletic", material: "cotton" })
p shirts
pants = Item.new({ item: "long pants", color: "red", style: "dress", material: "wool" })
p pants
shoes = Item.new({ item: "shoe", color: "white", style: "casual", material: "leather" })
p shoes

class Food < Item
  attr_accessor :shelf_life

  def initialize(input_options)
    super
    @shelf_life = input_options[:shelf_life]
  end
end

apple = Food.new({ item: "Apple", shelf_life: "2 weeks" })
p apple
apple.style = "granny smith"
p apple
