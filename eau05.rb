=begin
Créez un programme qui détermine si une chaîne de caractère se trouve dans une autre.

Exemples d’utilisation :
$> python exo.py bonjour jour
true

$> python exo.py bonjour joure
false

$> python exo.py 42
error

Afficher error et quitter le programme en cas de problèmes d’arguments.
=end
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

# prendre le mot1 comparer lettre par lettre la premiere du mot2 
#iterer pour le mot1 si exact passer a la deuxieme lettre du mot2 
# à partir de la lettre du mot1 qui == a la lettre mot2

mot1 = ARGV[0].split('')
mot2 = ARGV[1].split('')

def strin_contains(mot1, mot2)
    i = 0
    j = 0
    
    while i < mot1.size # si i n est pas egal a j = i + 1 sounon
    # si mot2 est pas fini et que mot1 est fini false si mot2 est fini et que mot 1 aussi et que full egal true sounon false
        #puts i, mot1[i], 'iii'
        print mot1[i], mot2[j], '..'
        
        if mot1[i] == mot2[j]# si 
            if j == mot2.size-1
                if mot2[j] == mot1[i]
                    puts true
                    exit
                
                elsif mot1[i] != mot2[j]
                    puts false
                    exit
                end
                
            end
            i += 1
            j += 1
        elsif i == mot1.size
            
            if mot1[i] != mot2[j]
                puts false
                exit
            end
        elsif j == mot2.size-1
            puts false
            exit
        else
            i += 1
        end

    end
    
end

strin_contains(mot1, mot2)

