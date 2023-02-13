rem_elem([],_,[]).
rem_elem([HA|TA],E,[HA|TR]):-
    not(HA==E),
    !,
    rem_elem(TA,E,TR).
rem_elem([_|TA],E,R):-
    rem_elem(TA,E,R).

nr_occ([],_,0).
nr_occ([HA|TA],E,S1):-
    HA==E,
    !,
    nr_occ(TA,E,S),
    S1 is S+1.
nr_occ([_|TA],E,S):-
    nr_occ(TA,E,S).

fct([],_,[]).
fct([HA|TA],CL,[[HA,S]|TR]):-
    nr_occ(CL,HA,S),
    rem_elem(TA,HA,L),
    fct(L,CL,TR).

main(L,R):-
    fct(L,L,R).

