color(red).
color(blue).
color(yellow).
color(white).
color(green).
prof(painter).
prof(sculptor).
prof(diplomat).
prof(doctor).
prof(violinist).
nat(english).
nat(spanish).
nat(japanese).
nat(norwegian).
nat(italian).
drink(tea).
drink(fruit_juice).
drink(coffee).
drink(milk).
drink(wine).
animal(dog).
animal(snails).
animal(fox).
animal(horse).
animal(zebra).
next(A, B, List) :-append(_, [A,B|_], List);append(_, [B,A|_], List).
the_zebra(Hs) :-
    length(Hs, 5),
    member(hs(english, red, _, _, _), Hs),
    member(hs(spanish, _, dog, _, _), Hs),
    member(hs(japanese, _, _, painter, _), Hs),
    member(hs(italian, _, _, _, tea), Hs),
    Hs = [hs(norwegian, _, _, _, _) | _],
    member(hs(_, green, _, _, coffee), Hs),
    append(_, [hs(_, white, _, _, _), hs(_, green, _, _, _)], Hs),
    member(hs(_, _, snails, sculptor, _), Hs),
    member(hs(_, yellow, _, diplomat, _), Hs),
    Hs = [_, _, hs(_, _, _, _, milk), _, _],
    next(hs(norwegian, _, _, _, _), hs(_, blue, _, _, _), Hs),
    member(hs(_, _, _, violinist, fruit_juice), Hs),
    next(hs(_, _, fox, _, _), hs(_, _, _, doctor, _), Hs),
    next(hs(_, _, horse, _, _), hs(_, _, _, diplomat, _), Hs).






















