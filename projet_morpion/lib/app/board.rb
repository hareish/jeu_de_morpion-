class Board  
  attr_accessor :list_case, :choix_case, :scenario_gagnant_possible, :scenario_perdant_possible,
  
  def initialize 
     @case1 = BoardCase.new("A1",'.')
		@case2 = BoardCase.new("A2",'.')
		@case3 = BoardCase.new("A3",'.')
		@case4 = BoardCase.new("B1",'.')
		@case5 = BoardCase.new("B2",'.')
		@case6 = BoardCase.new("B3",'.')
		@case7 = BoardCase.new("C1",'.')
		@case8 = BoardCase.new("C2",'.')
		@case9 = BoardCase.new("C3",'.')

    @scenario_gagnant_possible = false 
    @scenario_perdant_possible = false

    @list_case = [@A1, @A2, @A3,@B1, @B2, @B3,@C1, @C2, @C3,]

  end 
    # cette fonction on comprends pas  ###### 

  def write_on_case (case_choose, symbol)
    @array_cases.map { |item| item.position == case_choose ? item.content = player_symbol  : item }
  end

  def scenario_gagnant 

       if @A1.content == "o" && @A2.content == "o" && @A3.content == "o" || @A1.content == "x" && @A2.content == "x" && @A3.content == "x"
     @scenario_possible_gagnant = true
    end

    # On test la 2ème ligne
    if @B1.content == "o" && @B2.content == "o" && @B3.content == "o" || @B1.content == "x" && @B2.content == "x" && @B3.content == "x"
     @scenario_gagnant_possible = true
    end

    # On test la 3eme ligne
    if @C1.content == "o" && @C2.content == "o" && @C3.content == "o" || @C1.content == "x" && @C2.content == "x" && @C3.content == "x"
    @scenario_gagnant_possible = true
    end

    # On test la première colone
    if @A1.content == "o" && @B1.content == "o" && @C1.content == "o" || @A1.content == "x" && @B1.content == "x" && @C1.content == "x"
     @scenario_gagnant_possible = true
    end

    # On test le deuxième colone
    if @A2.content == "o" && @B2.content == "o" && @C2.content == "o" || @A2.content == "x" && @B2.content == "x" && @C2.content == "x"
     @scenario_gagnant_possible = true
    end

    # On test la 3eme colone
    if @A3.content == "o" && @B3.content == "o" && @C3.content == "o" || @A3.content == "x" && @B3.content == "x" && @C3.content == "x"
     @scenario_gagnant_possible = true
    end

    # On test la dagonale gauche
    if @A1.content == "o" && @B2.content == "o" && @C3.content == "o" || @A1.content == "x" && @B2.content == "x" && @C3.content == "x"
     @scenario_gagnant_possible = true
    end

    # On test la diagonle droite
    if @A3.content == "o" && @B2.content == "o" && @C1.content == "o" || @A3.content == "x" && @B2.content == "x" && @C1.content == "x"
     @scenario_gagnant_possible = true
    end

    
     #  si les cases sont remplis par x et o  les partis termis 
    end 
    def scenario_perdant
    @list_case.each { |item| item.content == /[:SPACE:]/ ? @scenario_perdant_possible = true : @scenario_perdant_possible = false }
    end

    def plateau_jeu
    # Show empty board at initialization and get variable at each player turn
    puts "   1   2  3"
    puts " a #{@A1.content} | #{@A2.content} | #{@A3.content}"
    puts "   ---------"
    puts " b #{@B1.content} | #{@B2.content} | #{@B3.content}"
    puts "   ---------"
    puts " c #{@C1.content} | #{@C2.content} | #{@C3.content}"

    end
end 
