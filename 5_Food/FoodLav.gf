
concrete FoodLav of Food = open SyntaxLav, ParadigmsLav in {

    flags coding = utf8 ;

    lincat
        Statement   = S ;
        Item        = NP ;
        Kind        = CN ;
		NKind       = CN ;
		AKind       = CN ;
        Nationality = A ;
		Adjective   = A ;
        Quality     = AP ;
		MQuality    = AP ;
        Degree      = AdA ;
        Subject     = Pron ;
        Activity    = VP ;
        Verb        = V2 ;

    lin
        Opinion item quality = mkS (mkCl item quality) ;
		MQOpinion item mquality = mkS (mkCl item mquality) ;

        This  kind = mkNP this_Det kind ;
        That  kind = mkNP that_Det kind ;
        These kind = mkNP these_Det kind ;
        Those kind = mkNP those_Det kind ;
		
		NThis  nkind = mkNP this_Det nkind ;
        NThat  nkind = mkNP that_Det nkind ;
        NThese nkind = mkNP these_Det nkind ;
        NThose nkind = mkNP those_Det nkind ;
		
		AThis  akind = mkNP this_Det akind ;
        AThat  akind = mkNP that_Det akind ;
        AThese akind = mkNP these_Det akind ;
        AThose akind = mkNP those_Det akind ;

        Cheese = mkCN (mkN "siers") ;
        Fish   = mkCN (mkN "zivs" feminine) ;
        Pizza  = mkCN (mkN "pica") ;
        Wine   = mkCN (mkN "vīns") ;

        NationalFood nationality kind = mkCN nationality kind ;
		AdjectiveFood adjective kind = mkCN adjective kind ;

        Dutch   = mkA "holandiešu" ;
        French  = mkA "franču" ;
        Italian = mkA "itāliešu" ;
		
		ADelicious = mkA "gards" ;
        AExpensive = mkA "dārgs" ;
        AFresh     = mkA "svaigs" ;

        Delicious = mkAP (mkA "gards") ;
        Expensive = mkAP (mkA "dārgs") ;
        Fresh     = mkAP (mkA "svaigs") ;

        ModifiedQuality degree quality = mkAP degree quality ;

        Quite = mkAdA "diezgan" ;
        Too   = too_AdA ;
        Very  = very_AdA ;
		
        VerbAction subject activity = mkS (mkCl (mkNP subject) activity) ;
        ItemActivity verb item = mkVP verb item ;
		I   = i_Pron ;
        Want = mkV2 (mkV "gribēt" third_conjugation) ;
}