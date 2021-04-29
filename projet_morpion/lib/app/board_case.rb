#TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
classe  BoradCase
        attr_accessor :choix, :case_id, 
    
        def  initialize ( choix,case_id)
            @choix = choix 
            @case_id = case_id 


        end 
    end 
    