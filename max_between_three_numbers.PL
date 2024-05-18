:-initialization(main).
main:-

    tmax(4,4,4,Result),
    write('the max number between three numbers is '),
    write(Result),
    nl.


tmax(N1,N2,N3,Max):-
    N1>=N2,N1>=N3,Max is N1;
    N2>N1,N2>N3, Max is N2;
    Max is N3.
