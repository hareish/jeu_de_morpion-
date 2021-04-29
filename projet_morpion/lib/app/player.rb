
class Player
  attr_accessor :name, :symbol
  

  
  def initialize (name,symbol)
    @name = name
    @symbol = symbol
  end 
 # saisi des informations des joeurs et symbols 
  def show_state
    puts "Le joueur #{@name} joue avec le symbol '#{@symbol}'"
  end
 #  afficher le chois nom de joeurs et symbols
   private
  def choix_name
    print "Quel ton nom ? "
    name = gets.chomp  
  end
#  choix de de symbol 
  def choix_symbol
    
    print "Quel jeton souhaites-tu ? (X ou O) "
    token = gets.chomp.upcase
    while token != "X" && token != "O"
      puts "---> erreur de saisie: soit X ou O."
      print "Quel jeton souhaites-tu ? (X ou O) "
      token = gets.chomp.upcase
    end
    return token
  end

end

