min([],M,M).
min([HA|TA],M,E):-
    HA<M,
    !,
    min(TA,HA,E).
min([_|TA],M,E):-
    min(TA,M,E).

rem_firstocc([],_,[]).
rem_firstocc([HA|TA],E,[HA|TR]):-
    not(HA==E),
    !,
    rem_firstocc(TA,E,TR).
rem_firstocc([_|TA],_,R):-
    rem_firstocc(TA,-1,R).

main(L,E):-
    min(L,9999,E).

sorted([],[]).
sorted(L,[E|TR]):-
    main(L,E),
    rem_firstocc(L,E,R),
    sort(R,TR).
