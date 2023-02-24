require "http"
system "clear"

puts "Please enter a word to produce a definition"

api_key = "key goes here"
while true
  puts "Enter a word"
  word = gets.chomp

  response = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/definitions?limit=200&includeRelated=false&useCanonical=false&includeTags=false&api_key=#{api_key}")

  word_definition = response.parse(:json)

  pp word_definition

  puts "This is the definiton of the word #{word}"

  part_of_speech = word_definition[0]["partOfSpeech"]
  definition = word_definition[0]["text"]

  puts "Part of Speech: #{part_of_speech}"
  puts "Definition: #{definition}"

  puts "Now I will give you the top example and pronunciation of the word #{word}"

  response2 = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/pronunciations?useCanonical=false&limit=50&api_key=#{api_key}")

  word_pronunc = response2.parse(:json)
  pronunciation = word_pronunc[0]["raw"]

  response3 = HTTP.get("https://api.wordnik.com/v4/word.json/#{word}/examples?includeDuplicates=false&useCanonical=false&limit=5&api_key=1ag35n7efcpe893tqh53eqgsyrhpyqwov0pqh73q17qwq9xtj")

  word_example = response3.parse(:json)
  example = word_example["examples"][0]["text"]

  puts "Top Pronunciation: #{pronunciation} "
  puts "Top Example: #{example}"

  puts "type q if you are done"
  input = gets.chomp
  if input == "q"
    puts "goodbye"
    break
  end
end
