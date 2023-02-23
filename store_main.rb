require "./store_food.rb"

shirts = Item.new({ item: "shirt", color: "black", style: "athletic", material: "cotton" })
p shirts
pants = Item.new({ item: "long pants", color: "red", style: "dress", material: "wool" })
p pants
shoes = Item.new({ item: "shoe", color: "white", style: "casual", material: "leather" })

p shoes
apple = Food.new({ item: "Apple", shelf_life: "2 weeks" })
p apple
apple.style = "granny smith"
p apple
