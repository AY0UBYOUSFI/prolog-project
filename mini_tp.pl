
is_left_to(first_house, second_house).
is_left_to(second_house, middle_house).
is_left_to(middle_house, fourth_house).
is_left_to(fourth_house, last_house).

is_right_to(second_house, first_house).
is_right_to(middle_house, second_house).
is_right_to(fourth_house, middle_house).
is_right_to(last_house, fourth_house).

lives_left_to(Person1, Person2) :- \+(Person1 = Person2), inhabits(Person1, House1), inhabits(Person2, House2), is_left_to(House1, House2).
lives_right_to(Person1, Person2) :- \+(Person1 = Person2), inhabits(Person1, House1), inhabits(Person2, House2), is_right_to(House1, House2).

neighbor(X, Y) :- lives_left_to(X, Y).
neighbor(X, Y) :- lives_left_to(Y, X).
neighbor(X, Y) :- lives_right_to(X, Y).
neighbor(X, Y) :- lives_right_to(Y, X).


lives_in(englishman, red).

lives_in(spaniard, green).
lives_in(spaniard, ivory).
lives_in(spaniard, yellow).
lives_in(spaniard, blue).

lives_in(ukrainian, green).
lives_in(ukrainian, ivory).
lives_in(ukrainian, yellow).
lives_in(ukrainian, blue).

lives_in(norwegian, green).
lives_in(norwegian, ivory).
lives_in(norwegian, yellow).
lives_in(norwegian, blue).

lives_in(japanese, green).
lives_in(japanese, ivory).
lives_in(japanese, yellow).
lives_in(japanese, blue).


owns(spaniard, dog).

owns(englishman, snails).
owns(englishman, fox).
owns(englishman, horse).
owns(englishman, zebra).

owns(ukrainian, snails).
owns(ukrainian, fox).
owns(ukrainian, horse).
owns(ukrainian, zebra).

owns(norwegian, snails).
owns(norwegian, fox).
owns(norwegian, horse).
owns(norwegian, zebra).

owns(japanese, snails).
owns(japanese, fox).
owns(japanese, horse).
owns(japanese, zebra).


drinks(ukrainian, tea).

drinks(englishman, coffee).
drinks(englishman, milk).
drinks(englishman, juice).
drinks(englishman, water).

drinks(spaniard, coffee).
drinks(spaniard, milk).
drinks(spaniard, juice).
drinks(spaniard, water).

drinks(norwegian, coffee).
drinks(norwegian, milk).
drinks(norwegian, juice).
drinks(norwegian, water).

drinks(japanese, coffee).
drinks(japanese, milk).
drinks(japanese, juice).
drinks(japanese, water).


smokes(japanese, parliaments).

smokes(englishman, old_golds).
smokes(englishman, kools).
smokes(englishman, chesterfields).
smokes(englishman, lucky_strike).

smokes(spaniard, old_golds).
smokes(spaniard, kools).
smokes(spaniard, chesterfields).
smokes(spaniard, lucky_strike).

smokes(ukrainian, old_golds).
smokes(ukrainian, kools).
smokes(ukrainian, chesterfields).
smokes(ukrainian, lucky_strike).

smokes(norwegian, old_golds).
smokes(norwegian, kools).
smokes(norwegian, chesterfields).
smokes(norwegian, lucky_strike).


inhabits(norwegian, first_house).

inhabits(englishman, second_house).
inhabits(englishman, middle_house).
inhabits(englishman, fourth_house).
inhabits(englishman, last_house).

inhabits(spaniard, second_house).
inhabits(spaniard, middle_house).
inhabits(spaniard, fourth_house).
inhabits(spaniard, last_house).

inhabits(ukrainian, second_house).
inhabits(ukrainian, middle_house).
inhabits(ukrainian, fourth_house).
inhabits(ukrainian, last_house).

inhabits(japanese, second_house).
inhabits(japanese, middle_house).
inhabits(japanese, fourth_house).
inhabits(japanese, last_house).


puzzle(FirstHouseOwner, SecondHouseOwner, MiddleHouseOwner, FourthHouseOwner, LastHouseOwner,
    RedHouseOwner, GreenHouseOwner, IvoryHouseOwner, YellowHouseOwner, BlueHouseOwner,
    CoffeeDrinker, TeaDrinker, MilkDrinker, JuiceDrinker, WaterDrinker,
    OldGoldsSmoker, KoolsSmoker, ChesterfieldsSmoker, LuckyStrikeSmoker, ParliamentsSmoker,
    DogOwner, SnailsOwner, FoxOwner, HorseOwner, ZebraOwner) :-
        \+(FirstHouseOwner = SecondHouseOwner),
        \+(FirstHouseOwner = MiddleHouseOwner),
        \+(FirstHouseOwner = FourthHouseOwner),
        \+(FirstHouseOwner = LastHouseOwner),

        \+(SecondHouseOwner = MiddleHouseOwner),
        \+(SecondHouseOwner = FourthHouseOwner),
        \+(SecondHouseOwner = LastHouseOwner),

        \+(MiddleHouseOwner = FourthHouseOwner),
        \+(MiddleHouseOwner = LastHouseOwner),

        \+(FourthHouseOwner = LastHouseOwner),


        \+(RedHouseOwner = GreenHouseOwner),
        \+(RedHouseOwner = IvoryHouseOwner),
        \+(RedHouseOwner = YellowHouseOwner),
        \+(RedHouseOwner = BlueHouseOwner),

        \+(GreenHouseOwner = IvoryHouseOwner),
        \+(GreenHouseOwner = YellowHouseOwner),
        \+(GreenHouseOwner = BlueHouseOwner),

        \+(IvoryHouseOwner = YellowHouseOwner),
        \+(IvoryHouseOwner = BlueHouseOwner),

        \+(YellowHouseOwner = BlueHouseOwner),


        \+(CoffeeDrinker = TeaDrinker),
        \+(CoffeeDrinker = MilkDrinker),
        \+(CoffeeDrinker = JuiceDrinker),
        \+(CoffeeDrinker = WaterDrinker),

        \+(TeaDrinker = MilkDrinker),
        \+(TeaDrinker = JuiceDrinker),
        \+(TeaDrinker = WaterDrinker),

        \+(MilkDrinker = JuiceDrinker),
        \+(MilkDrinker = WaterDrinker),

        \+(JuiceDrinker = WaterDrinker),


        \+(OldGoldsSmoker = KoolsSmoker),
        \+(OldGoldsSmoker = ChesterfieldsSmoker),
        \+(OldGoldsSmoker = LuckyStrikeSmoker),
        \+(OldGoldsSmoker = ParliamentsSmoker),

        \+(KoolsSmoker = ChesterfieldsSmoker),
        \+(KoolsSmoker = LuckyStrikeSmoker),
        \+(KoolsSmoker = ParliamentsSmoker),

        \+(ChesterfieldsSmoker = LuckyStrikeSmoker),
        \+(ChesterfieldsSmoker = ParliamentsSmoker),

        \+(LuckyStrikeSmoker = ParliamentsSmoker),


        \+(DogOwner = SnailsOwner),
        \+(DogOwner = FoxOwner),
        \+(DogOwner = HorseOwner),
        \+(DogOwner = ZebraOwner),

        \+(SnailsOwner = FoxOwner),
        \+(SnailsOwner = HorseOwner),
        \+(SnailsOwner = ZebraOwner),

        \+(FoxOwner = HorseOwner),
        \+(FoxOwner = ZebraOwner),

        \+(HorseOwner = ZebraOwner),


        %lives_left_to(FirstHouseOwner, SecondHouseOwner),
        %lives_right_to(SecondHouseOwner, FirstHouseOwner),
        %neighbor(FirstHouseOwner, SecondHouseOwner),
        %neighbor(SecondHouseOwner, FirstHouseOwner),

        %lives_left_to(SecondHouseOwner, MiddleHouseOwner),
        %lives_right_to(MiddleHouseOwner, SecondHouseOwner),
        %neighbor(SecondHouseOwner, MiddleHouseOwner),
        %neighbor(MiddleHouseOwner, SecondHouseOwner),

        %lives_left_to(MiddleHouseOwner, FourthHouseOwner),
        %lives_right_to(FourthHouseOwner, MiddleHouseOwner),
        %neighbor(MiddleHouseOwner, FourthHouseOwner),
        %neighbor(FourthHouseOwner, MiddleHouseOwner),

        %lives_left_to(FourthHouseOwner, LastHouseOwner),
        %lives_right_to(LastHouseOwner, FourthHouseOwner),
        %neighbor(FourthHouseOwner, LastHouseOwner),
        %neighbor(LastHouseOwner, FourthHouseOwner),

        inhabits(FirstHouseOwner, first_house),
        inhabits(SecondHouseOwner, second_house),
        inhabits(MiddleHouseOwner, middle_house),
        inhabits(FourthHouseOwner, fourth_house),
        inhabits(LastHouseOwner, last_house),

        lives_in(RedHouseOwner, red),
        lives_in(GreenHouseOwner, green),
        lives_in(IvoryHouseOwner, ivory),
        lives_in(YellowHouseOwner, yellow),
        lives_in(BlueHouseOwner, blue),

        drinks(CoffeeDrinker, coffee),
        drinks(TeaDrinker, tea),
        drinks(MilkDrinker, milk),
        drinks(JuiceDrinker, juice),
        drinks(WaterDrinker, water),

        smokes(OldGoldsSmoker, old_golds),
        smokes(KoolsSmoker, kools),
        smokes(ChesterfieldsSmoker, chesterfields),
        smokes(LuckyStrikeSmoker, lucky_strike),
        smokes(ParliamentsSmoker, parliaments),

        owns(DogOwner, dog),
        owns(SnailsOwner, snails),
        owns(FoxOwner, fox),
        owns(HorseOwner, horse),
        owns(ZebraOwner, zebra),

        drinks(GreenHouseOwner, coffee),

        lives_right_to(GreenHouseOwner, IvoryHouseOwner),
        lives_left_to(IvoryHouseOwner, GreenHouseOwner),
        %neighbor(GreenHouseOwner, IvoryHouseOwner),
        %neighbor(IvoryHouseOwner, GreenHouseOwner),

        owns(OldGoldsSmoker, snails),

        smokes(YellowHouseOwner, kools),

        drinks(MiddleHouseOwner, milk),

        neighbor(ChesterfieldsSmoker, FoxOwner),
        neighbor(FoxOwner, ChesterfieldsSmoker),

        neighbor(KoolsSmoker, HorseOwner),
        neighbor(HorseOwner, KoolsSmoker),

        drinks(LuckyStrikeSmoker, juice),

        neighbor(norwegian, BlueHouseOwner),
        neighbor(BlueHouseOwner, norwegian).
