def trader_du_dimanche(arr)

j = 1
iv = -2
ia = -1
vala = arr[iv].to_i     #Valeur vente
valv = arr[ia].to_i     #Valeur achat
marge = 0
jours = [ia,iv]         #jours achat et vente

while -iv <= arr.length       #itération sur toute la liste, en partant de la dernière valeur (que je considère comme étant la valeur de vente initiale)

    if valv - arr[iv].to_i > marge    #si on trouve un nombre inférieur à la valeur de vente, avec une marge meilleure que celle d'avant, on garde ces jours
        vala = arr[iv].to_i
        marge = valv - vala


    elsif valv < arr[iv].to_i         #si on trouve un nombre supérieur à notre valeur de vente, il y a peut-être une meilleure affaire plus tôt, on va tester s'il existe une meilleure marge plus tôt

      k=iv-1
      while -k <= arr.length          #itération sur le reste de la liste

        if arr[iv].to_i - arr[k].to_i >= marge    #de même qu'avant : si on trouve une meilleure marge, on actualise les variables

          valv = arr[iv].to_i
          vala = arr[k].to_i
          marge = valv - vala


        end

        k -= 1

      end

    end

  iv -= 1
  jours[0] = arr.index(vala)+1
  jours[1] = arr.index(valv)+1

end


  puts "acheter et vendre aux jours #{jours} : # $#{valv} - $#{vala} == $#{marge} pour un max de profit"

end



def trader_du_lundi(array_jours)


  list_companies = [:GOO, :MMM, :ADBE, :EA, :BA, :KO, :XOM, :GPS, :MCD, :DIS, :CRM, :JNJ]



  list_companies.each do |a|
    company = []
    array_jours.each do |x|

      company.insert(-1,x[a])

      end
    print "#{a} : "
    puts trader_du_dimanche(company)
  end
end

trader_du_lundi([{ :GOO => 15, :MMM => 14, :ADBE => 12, :EA=> 13, :BA => 8, :KO => 10, :XOM => 20, :GPS => 7, :MCD => 11, :DIS => 15, :CRM => 6, :JNJ => 10 },
  { :GOO => 8, :MMM => 20, :ADBE => 3, :EA=> 10, :BA => 5, :KO => 19, :XOM => 12, :GPS => 6, :MCD => 15, :DIS => 9, :CRM => 10, :JNJ => 17 },
  { :GOO => 3, :MMM => 8, :ADBE => 15, :EA=> 5, :BA => 10, :KO => 5, :XOM => 15, :GPS => 13, :MCD => 10, :DIS => 18, :CRM => 5, :JNJ => 14 },
  { :GOO => 17, :MMM => 3, :ADBE => 6, :EA=> 9, :BA => 15, :KO => 6, :XOM => 8, :GPS => 1, :MCD => 10, :DIS => 15, :CRM => 18, :JNJ => 3 },
  { :GOO => 8, :MMM => 18, :ADBE => 4, :EA=> 6, :BA => 15, :KO => 18, :XOM => 3, :GPS => 12, :MCD => 19, :DIS => 3, :CRM => 7, :JNJ => 9 },
  { :GOO => 10, :MMM => 12, :ADBE => 8, :EA=> 3, :BA => 18, :KO => 20, :XOM => 5, :GPS => 11, :MCD => 3, :DIS => 9, :CRM => 8, :JNJ => 15 },
  { :GOO => 17, :MMM => 14, :ADBE => 2, :EA=> 17, :BA => 7, :KO => 13, :XOM => 1, :GPS => 15, :MCD => 15, :DIS => 10, :CRM => 9, :JNJ => 17 }])
