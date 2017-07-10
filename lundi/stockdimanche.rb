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
        jours[0]=iv

    elsif valv < arr[iv].to_i         #si on trouve un nombre supérieur à notre valeur de vente, il y a peut-être une meilleure affaire plus tôt, on va tester s'il existe une meilleure marge plus tôt

      k=iv-1
      while -k <= arr.length          #itération sur le reste de la liste

        if arr[iv].to_i - arr[k].to_i >= marge    #de même qu'avant : si on trouve une meilleure marge, on actualise les variables

          valv = arr[iv].to_i
          vala = arr[k].to_i
          marge = valv - vala
          jours[0]=arr.length+k+1
          jours[1]=arr.length+iv+1

        end

        k -= 1

      end

    end

  iv -= 1

end

  puts "acheter et vendre aux jours #{jours} : # $#{valv} - $#{vala} == $#{marge} pour un max de profit"

end

trader_du_dimanche([17,3,6,9,15,8,6,1,10])
