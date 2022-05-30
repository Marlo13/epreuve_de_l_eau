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

# prendre le mot1 comparer lettre par lettre la premiere du mot2 iterer pour le mot1 si exact passer a la deuxieme lettre du mot2
# à partir de la lettre du mot1 qui == a la lettre mot2
arr = ["Hello"]


    p arr