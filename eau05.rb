=begin
def caractere(arr)
    if arr[0].include?(arr[1])
        puts true
    else
        puts false
    end
end
caractere(ARGV)


def caractere_Deux(arr)
    if arr[0].match(arr[1])
        puts true
    else 
        puts false
    end
end
caractere_Deux(ARGV)
=end

def strin_contains(mot1, mot2)

    mot1 = mot1.split('')
    mot2 = mot2.split('')
    i = 0
    j = 0
    
    while i < mot1.size
        print mot1[i], mot2[j], ".."
        
        if mot1[i] == mot2[j]
            i+=1
            j+=1
        else
            i+=1
        end
        if i == mot1.size
            if j == mot2.size
                puts true
                exit
            end
        end
        (puts true ; exit) if j == mot2.size
        
        (j = 0) if j > 0 && mot2[j] != mot1[i]
    end
    (puts false ; exit) if j == 0
end

#gestion n erreur
(puts "error" ; exit) unless ARGV.size == 2
(puts "error" ; exit) if /\d/.match(ARGV[0]) || /\d/.match(ARGV[1])

#parsing
mot1 = ARGV[0]
mot2 = ARGV[1]

#resolution
result = strin_contains(mot1, mot2)

#affichage
puts result