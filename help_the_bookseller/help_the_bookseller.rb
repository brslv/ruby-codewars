def stockList(list_of_art, list_of_cat)
  list_of_cat.each_with_object(Array.new(0)) do |l, a|
    books_of_cat = list_of_art.select{ |a| a[0] == l }
    price_sum = books_of_cat.empty? ? 0 : books_of_cat.map{ |x| x.split(/ /)[1].to_i }.reduce(:+)
    a << "(#{l} : #{price_sum})"
  end.join(' - ')
end

b = ["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"]
c = ["A", "B", "W"]

p stockList(b, c) # "(A : 200) - (B : 1140) - (W : 0)"
