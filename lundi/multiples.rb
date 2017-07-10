def multiples(n,m,p)
  somme = 0
  i=0
  while i<n
    if  i%m == 0 || i%p == 0
      somme += i
    end
    i += 1
  end
  puts "Bravo Cédric! La somme est #{somme}"
end
multiples(1000,3,5)
