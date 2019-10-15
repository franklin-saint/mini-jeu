require "pry"

class Player #classe pour les bots
    attr_accessor :name, :hp

    def initialize(name)
        @name = name
        @hp = 10
        
    end
    def show_state #methode pour afficher les PV des joueurs
      return "Le joueur #{@name} a #{@hp} HP !"
    end

    def gets_damage(damage_received) #methode pour les degats reçus
        @hp = @hp - damage_received 

      if @hp <= 0
        puts "#{@name} a succombé car il était trop nul"
      end
    end

    def attacks(player) #methode pour les attaques

        puts "#{@name} attaque #{player.name} et lui casse les dents"
        damage = compute_damage
        puts "Il lui inflige #{damage} points de dégats"
        player.gets_damage (damage)

    end



        def compute_damage
            return rand(1..6)
        end
end

class HumanPlayer < Player #class pour "vrais joueurs" qui reprend casiment toutes les méthodes précédentes
    attr_accessor : weapon_level

    def initialize(name)
        @name = name
        @hp = 100
        @weapon_level = 1   
    end
    def show_state 
        return "Le joueur #{@name} a #{@hp} HP et #{@weapon_level} de niveau d'arme!"
      end

      def compute_damage #methode pour le multiplicateur de dégats
        rand(1..6) * @weapon_level
    end

    def search_weapon #méthode pour la recherche d'armes
        rand(1..6) = lvl
        puts "Tu as trouvé une arme de niveau #{lvl}!"
        if lvl > @weapon_level
            puts "Tu va pouvoir casser plus de cul avec ça , prends la !"
        else "Gardes la tienne ou tu va te faire démonter mec !"
    end

    def search_heal #méthode pour les soins
        rand(1..6) = result
        if result = 1
            puts "T'as rien trouvé blaireau"
        elsif result => 2 && result <=5
            puts "T'as trouvé un pack de 50 pv soignes toi"
            @hp += 50
        elsif result = 6
            puts "Toi t'as de la chance t'as trouvé un pack de 80 PV , soignes toi et va jouer au loto"
            @hp += 80
        end
    end





