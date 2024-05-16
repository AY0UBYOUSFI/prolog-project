% Define the different nationalities
nationality(english).
nationality(spanish).
nationality(japanese).
nationality(norwegian).
nationality(italian).

% Define the different colors
color(red).
color(blue).
color(yellow).
color(white).
color(green).

% Define the different professions
profession(painter).
profession(sculptor).
profession(diplomat).
profession(doctor).
profession(violinist).

% Define the different drinks
drink(tea).
drink(fruit_juice).
drink(coffee).
drink(milk).
drink(wine).

% Define the different animals
animal(dog).
animal(snails).
animal(fox).
animal(horse).
animal(zebra).

% Rules for determining the position of the houses
right(X, Y, List) :- append(_, [X,Y|_], List).
next_to(X, Y, List) :- right(X, Y, List) ; right(Y, X, List).

solve(ZebraHouse) :-
    % Create a list of variables for the different attributes
    length(Houses, 5),
    member(house(_, _, _, _, zebra), Houses),
    member(house(_, _, _, drink(milk), _), Houses),

    % Apply the given constraints
    member(house(nationality(english), color(red), _, _, _), Houses),
    member(house(nationality(spanish), _, _, _, animal(dog)), Houses),
    member(house(nationality(japanese), _, profession(painter), _, _), Houses),
    member(house(nationality(italian), _, _, drink(tea), _), Houses),
    member(house(nationality(norwegian), _, _, _, _), Houses),
    right(house(nationality(norwegian), _, _, _, _), house(_, color(blue), _, _, _), Houses),
    member(house(_, color(green), _, drink(coffee), _), Houses),
    right(house(_, color(white), _, _, _), house(_, color(green), _, _, _), Houses),
    member(house(_, color(yellow), profession(diplomat), _, _), Houses),
    next_to(house(_, _, profession(doctor), _, _), house(_, _, _, _, animal(fox)), Houses),
    next_to(house(_, _, profession(diplomat), _, _), house(_, _, _, _, animal(horse)), Houses),
    member(house(_, _, profession(violinist), drink(fruit_juice), _), Houses),

    % Unify ZebraHouse with the attributes of the house where the zebra lives
    member(house(Nationality, Color, Profession, Drink, animal(zebra)), Houses),
    ZebraHouse = house(Nationality, Color, Profession, Drink, animal(zebra)).
