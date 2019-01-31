def alphabetize(arr)
  # code here
  alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"



  arr = arr.sort do |a, b|
    
    a_f = alphabet.index(a[0])
    b_f = alphabet.index(b[0])
    c = 1
    while (a_f == b_f)
      a_f = alphabet.index(a[c])
      b_f = alphabet.index(b[c])
      c += 1
    end
    
    a_f<=>b_f

  end
end