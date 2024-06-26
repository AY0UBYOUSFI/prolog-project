nationality(english).
nationality(spanish).
nationality(japanese).
nationality(norwegian).
nationality(italian).
color(red).
color(blue).
color(yellow).
color(white).
color(green).
profession(painter).
profession(sculptor).
profession(diplomat).
profession(doctor).
profession(violinist).
drink(tea).
drink(fruit_juice).
drink(coffee).
drink(milk).
drink(water).
drink(wine).
animal(dog).
animal(snails).
animal(fox).
animal(horse).
animal(zebra).
house(1, _, _, _, _).
house(2, _, _, _, _).
house(3, _, _, _, _).
house(4, _, _, _, _).
house(5, _, _, _, _).
solve(ZebraHouse) :-
    house(_, nationality(english), red, _, _),
    house(_, nationality(spanish), _, _, dog),
    house(_, nationality(japanese), _, painter, _),
    house(_, nationality(italian), _, tea, _),
    house(1, nationality(norwegian), _, _, _),
    house(_, nationality(norwegian), blue, _, _),
    house(_, _, green, coffee, _),
    house(_, _, white, _, _),
    house(_, _, yellow, diplomat, _),
    house(_, _, _, fruit_juice, violinist),
    house(Left, _, _, _, _),
    house(Right, _, _, _, zebra),
    Left is Right - 1,
    (house(Left, _, _, _, fox); house(Right, _, _, _, fox)),
    (house(Left, _, _, _, horse); house(Right, _, _, _, horse)),
    member(ZebraHouse, [Left, Right]).
print_houses :-
    solve(ZebraHouse),  % Solve the puzzle to get the ZebraHouse
    between(1, 5, HouseNumber),  % Iterate through house numbers from 1 to 5
    house(HouseNumber, Nationality, Color, Profession, Drink),
    format('House ~w:~n', [HouseNumber]),  % Print the house number
    format('\tNationality: ~w~n', [Nationality]),  % Print nationality
    format('\tColor: ~w~n', [Color]),  % Print color
    format('\tProfession: ~w~n', [Profession]),  % Print profession
    format('\tDrink: ~w~n', [Drink]),  % Print drink
    ZebraHouse =:= HouseNumber,  % Ensure the ZebraHouse is correctly identified
    nl,  % Add a newline for better formatting
    fail.  % Force backtracking to find all solutions
