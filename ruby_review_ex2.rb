count = 0
11.times do
  p count
  count += 1
end

recipies = ["tacos", "pizza", "steak", "stew"]
languages = ["english", "spanish", "arabic", "dutch"]

if recipies.length > 10 && languages.length > 5
  puts "You both should date <3"
else
  puts "You both should NOT date :`("
end

cook = false
lovelanguage = false
recipies.each do |recipie|
  if recipie == "crepes"
    cook = true
  end
end
languages.each do |language|
  if language == "french"
    lovelanguage = true
  end
end

if cook == true || lovelanguage == true
  puts "You two should marry :)"
else
  puts "You two should NOT marry :("
end
