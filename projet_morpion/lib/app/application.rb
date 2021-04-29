require_relative 'game'

class Application 
    attr_accessor :joueur1, :joueur2, game 
    @@nombre_de_partie = 0
    
    def initialize 
        @game = Game.new 
         # initialisation d'une partie
         while @game.status == ' en cours '
            @game.turn 
            @game.fin_de_jeu
            @game.nouvelle_partie
         
        end
    end
end
