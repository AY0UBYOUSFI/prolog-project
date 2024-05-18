:-initialization(main).
main:-

    fmod(5,3,Result),
    write('the mod between 4 and 3 is :  '),
    write(Result),
    nl.


fmod(N1,N2,Result):-
    Result is N1 mod N2.
