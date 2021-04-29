require_relative 'board' 
require_relative 'player' 

class Game 

    attr_accessor :joueur, :status, :list_joueurs, :board

    def initialize 
        @joueur1 = joueur.new
        @joueur2 = joueur.new
        @list_joueurs = [ @joueurs1,@joueurs2]
        @status = "c'est partie"
    end
    if @joueur1.symbol == @joueur2.symbol 
        puts "Attention, j'ai changé vos jetons car ils étaient identiques"
        if joueur1.symbol == 'X'
            joueur2.symbol == 'O'
        elsif joueur1.symbol == 'O'
            joueur2.symbol == 'X'
        end 
    end 
    @joueur1.show_state 
    @joueur2.show_state 
    @board = Board.new 
    # afficher le plateeu 
    Show.new.show_board(@board)

    def turn
        
    i=0 
    while @status == "c'est partie"  && i<9 
        @joueur = @list_joueurs [i%2] # joueur alternativement index 0 ou 1
        # joueur alternativement index 0 ou 1
      @board.play_turn(@board, @joueur)
      # c'est pour changer le tour de joueur à chaque fois 
      # affiche tableau en-cours
      Show.new.show_board(@board)

      # check winner
      if @board.victory?(@board)
        @status = 'winner'
        break
      end

      i+=1 # compteur de tour
    end

end
    def nouvelle_partie 
         print "Voulez-vous faire une nouvelle partie (O/N) ? " 
         choix = gets.chomp.upcase
         while choix != 'O' || choix !='N'
            if choice == 'O'
                @board = Board.new 
                @status = "c'est partie"
                puts '_' *20
                puts " commençons une nouvelle partie!" 
                 Show.new.show_board(@board)
                 break 
            elsif choix == 'N'
                puts " ok, bye "
            exit 
            end 
     print "Choix erroné. Voulez-vous faire une nouvelle partie (O/N) ? "
      choice = gets.chomp.upcase
    
        end 
        puts choice 
        puts @status
    end 

    def fin_de_jeu 
        if @status == ' cest partie '
            puts = " afficher match nul"
        elsif @staus == 'winner'    
            puts " Bravo #{@joueur.jouer_name}, tu as gagné" 
        end
    end


end 
