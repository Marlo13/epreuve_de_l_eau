a = 1
b = 0

def suite_De_Nombre(a,b)
a = 1
b = 0
    while b < 99 && a <= 99 # ajoutez 1 a 00 de a et count +1 pour a chaque fois que a =99 et le remettre a 0

    
        if a < b  # mets a par rapport a b dans l ordre croissant
            if a == 0 
                a = a + 1
            end
           a = a + b
        end
        if a == 99 # increment b each a = 99 & puts avec 0 devant quand besoin
            
            if b < 10 
                puts "0#{b} #{a}"
            else
                puts "#{b} #{a}"
            end
            a = -1
            b = b + 1
        
        else
            
            if a < 10 && b < 10
                puts "0#{b} 0#{a}"
            elsif b < 10
                puts "0#{b} #{a}"
            elsif  a < 10
                puts "#{b} 0#{a}"
            else
                puts "#{b} #{a}"
            end
        end


        a = a+1
    end
end

suite_De_Nombre(a,b)

