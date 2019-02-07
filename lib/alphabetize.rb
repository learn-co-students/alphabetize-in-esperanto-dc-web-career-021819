require 'pry'
def alphabetize(arr)
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  index = 0
  matched = true
  while matched == true do
    collection = []
    arr.each { |phrase| collection << phrase[index] }
    unique_letters = collection.uniq
    unique_letters.length > 1 ? matched = false : index += 1
  end
  arr.sort_by {|word| alphabet.index(word[index])}
end