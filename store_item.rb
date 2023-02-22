class Item
  attr_accessor :item, :color, :stlye

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
shirts.print_item
#pants = Item.new({ :item "pant", :color "red", :style "dress", :material "wool"})
#pants.print_item
#shoes = Item.new({ :item "shoe", :color "white", :style "casual", :material "leather"})
#shoes.print_item
