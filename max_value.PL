:-initialization(main).
main:-
max(33,324,Result),
write('the max number is '),
write(Result),
nl.
max(Number1,Number2,Result):-
    Number1>=Number2,Result is Number1;
    Result is Number2.

