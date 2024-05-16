som(0,0).
som(A,Result):-
    A>0,
    New is A-1,
    som(New , NewResult),
    Result is NewResult + A.
from_to(From,To,Som):-
    Ptr is To - From,
    som(Ptr,Som).
