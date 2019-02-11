def alphabetize(arr)
  esp_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  ascii = "@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\"

  sorted_arr = arr.sort_by do |word|
    word.tr(esp_alphabet, ascii)
  end
  return sorted_arr
end
