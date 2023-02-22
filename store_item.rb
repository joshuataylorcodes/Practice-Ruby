class Item
  attr_reader :item, :color, :style
  attr_writer :material

  def initialize(input_item, input_color, input_style, input_material)
    @item = input_item
    @color = input_color
    @style = input_style
    @material = input_material
  end

  #def material=(text)
  #  @material = text
  #end

  def print_item
    puts "The New Item we are selling is #{color} #{item} made from #{@material}. The style is #{style}."
  end
end

shirts = Item.new("shirt", "black", "athletic", "cotton")
shirts.print_item
