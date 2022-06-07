
abstract Food = {

    flags startcat = Statement ;

    cat
        Statement ;		-- S
        Item ;			-- NP
        Kind ;			-- CN
		NKind ;			-- CN
		AKind ;			-- CN
        Nationality ;	-- A
		Adjective ;		-- A
        Quality ;		-- AP
		MQuality ;		-- AP
        Degree ;        -- AdA
        Subject ;       -- Pron
        Activity ;      -- VP
        Verb ;          -- V2

    fun
        Opinion : Item -> Quality -> Statement ;
		
		MQOpinion : Item -> MQuality -> Statement ;

        This, That, These, Those : Kind -> Item ;
		NThis, NThat, NThese, NThose : NKind -> Item ;
		AThis, AThat, AThese, AThose : AKind -> Item ;

        Cheese, Fish, Pizza, Wine : Kind ;

        NationalFood : Nationality -> Kind -> NKind ;
		
		AdjectiveFood : Adjective -> Kind -> AKind ;

        Dutch, French, Italian : Nationality ;

		ADelicious, AExpensive, AFresh : Adjective ;
		
        Delicious, Expensive, Fresh : Quality ;

        ModifiedQuality : Degree -> Quality -> MQuality ;

        Quite, Too, Very : Degree ;

        VerbAction : Subject -> Activity -> Statement ;
		
		ItemActivity : Verb -> Item -> Activity ;

		I : Subject ; 

        Want : Verb ;
}

-- TODO: ieladet http://cloud.grammaticalframework.org/gfse/ un izmeginat Minibar saskarni