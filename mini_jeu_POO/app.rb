require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

player1 = Player.new("ahmed") #Pour donner des noms aux joueurs
player2 = Player.new("tarek")


    puts "L'entrée des deux poids lourds j'ai nommé Tarek et Ahmed "

    while player1.hp > 0 && player2.hp >0 #boucle pour les attaques et la fin du jeu
   puts "#{player1.show_state}"  
   puts "#{player2.show_state}"

    puts "ET MAINTENANT PLACE A LA BAGARRE"

    puts "#{player1.attacks(player2)}"
    if player1.hp < 0 || player2.hp < 0
        break
    end
    puts "#{player2.attacks(player1)}"

    end

