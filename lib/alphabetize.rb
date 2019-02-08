def alphabetize(arr)
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  
  #create a hash of each letter with a numerical value that you can rank by 
  alphabet_hash = {}
  alphabet.chars.each_with_index do | letter, index |
    alphabet_hash[letter] = index + 1 
  end 
  alphabet_hash[" "] = 0 
  
  #create a hash and assign an array of values for each word 
  arr_hash = {}
  
  arr.each do | word | 
    arr_hash[word] = []
    word.chars.each do | letter |
      arr_hash[word] << alphabet_hash[letter]
    end 
  end 
  
  #sort by values added to array
  arr.sort_by do | word | 
    arr_hash[word]
  end 
  
end
