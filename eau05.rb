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
        #puts i, mot1[i], 'iii'
        print mot1[i], mot2[j], '...' #si j prends +1 alors arreter si apres il n est plus egal a i
        if j > 0
            if mot1[i] == mot2[j]
            else 
                puts false
                exit
            end
        end

        if mot1[i] == mot2[j] # si i == j 
            if j == mot2.size-1 #si j == la longueur de mot2
                if mot2[j] == mot1[i]# si j == i
                    puts true
                    exit
                
                elsif mot1[i] != mot2[j]# sinon si i != j
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


gerer quand mot1[i] = mot2[j] doit increment i et j 
if mot1[i] = mot2[j]
    i +=1
    j +=1
end

gerer quand mot1[i] != mot2[j] doit incrementif i
if mot1[i] != mot2[j]
    i +=1
end


gerer quand mot1[i] = mot2[j] on deja etait egal 
if j > 0
    if mot1[i] == mot2[j]
    else
        puts false
        exit
    end
end


gerer quand mot1[i] est finie / si mot2[j] est finie ou pas/ si fini tout les deux derniere lettre ==?
gerer quand mot2[j] est finie / si mot1[i] est finie ou pas/ si fini tout les deux derniere lettre ==?
if i == mot1.size
    if j == mot2.size
        puts les deux fini
    else
        puts false
        exit
    end
elsif j == mot2.size
    if i == mot1.size
            puts les deux fini
    else
            puts false
            exit
    end
else
end

gerer quand mot2[j] est finie / si mot1[i] est finie ou pas/ si fini tout les deux derniere lettre ==?
if j == mot2.size
    if i == mot1.size
        puts les deux fini
    else
        puts false
        exit
    end
end

gerer quand dans mot1[i] il y a plusieur fois la meme lettre qui peut etre dans mot2[j]/ commment commencer a la bonne lettre ? du coup si une autre egaliter 
et que la second lettre pas bonne aller a la suivante?
