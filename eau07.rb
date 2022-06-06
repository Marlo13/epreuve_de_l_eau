=begin
Créez un programme qui met en majuscule la première lettre de chaque mot d’une chaîne de caractères. Les autres lettres devront être en minuscules. 
Les mots ne sont délimités que par un espace, une tabulation ou un retour à la ligne.

Exemples d’utilisation :
$> python exo.py “bonjour mathilde, comment vas-tu ?!”
Bonjour Mathilde, Comment Vas-tu ?!

$> python exo.py 42
error

Afficher error et quitter le programme en cas de problèmes d’arguments.
=end

#Mettre une majuscule apres chaque " "
#si n > a maj n = 0 a =0
def first_upcase(arr)
    n = 0
    a = 0
    b = 0
    lettre = arr.dup
    while a < (lettre.size)#for adapter
        (lettre[a] = lettre[a].upcase) if a == 0
        (lettre[a] = lettre[a].upcase ; n = 0 ; b = 0) if n > b
        (n += 1) if lettre[a] == ' '
        a += 1
        b += 1
        n += 1
    end
    return lettre
end


#gestion d erreur
(puts "error" ; exit) if ARGV[0] == nil
(puts "error" ; exit) if /\d/.match(ARGV[0])
#parsing
chaine = ARGV[0]
#resolution
result = first_upcase(chaine)
#affichage
puts result