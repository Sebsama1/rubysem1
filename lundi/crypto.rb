def chiffre_de_cesar(string,n)
  string.each_char do |x|
    if x!=" "                          #Traite le cas des espaces à part : on ne veut changer que les caractères autre que espace
      nv = x.ord

        if 65 <= nv && nv <= 90        #Cas des majuscules
          nv += n
            while nv > 90              #bouclage z-a avec while pour si un malin met un décalage "n" de 100.000
              nv -= 26
            end

        elsif 97 <= nv && nv <= 122    #Cas des minuscules
          nv += n
            while nv > 122
              nv -= 26
            end
        end                            #Les autres caractères restent inchangés (type !)

      nv = nv.chr
      print nv

    else
      print " "
    end
  end
  puts
end

chiffre_de_cesar("Hello world!",5000)
