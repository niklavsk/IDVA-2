
concrete FoodEng of Food = open SyntaxEng, ParadigmsEng in {

    lincat
        Statement   = S ;
        Item        = NP ;
        Kind        = CN ;
		NKind       = CN ;
        Nationality = A ;
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

        Cheese = mkCN (mkN "cheese") ;
        Fish   = mkCN (mkN "fish" "fish") ;
        Pizza  = mkCN (mkN "pizza") ;
        Wine   = mkCN (mkN "wine") ;

        NationalFood nationality kind = mkCN nationality kind ;

        Dutch   = mkA "Dutch" ;
        French  = mkA "French" ;
        Italian = mkA "Italian" ;

        Delicious = mkAP (mkA "delicious") ;
        Expensive = mkAP (mkA "expensive") ;
        Fresh     = mkAP (mkA "fresh") ;

        ModifiedQuality degree quality = mkAP degree quality ;

        Quite = mkAdA "quite" ;
        Too   = too_AdA ;
        Very  = very_AdA ;
		
        VerbAction subject activity = mkS (mkCl (mkNP subject) activity) ;
        ItemActivity verb item = mkVP verb item ;
		I   = i_Pron ;
        Want = mkV2 (mkV "want") ;
}