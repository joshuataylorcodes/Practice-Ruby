require "./store_module.rb"

class Item
  include ThankyouStatment
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

