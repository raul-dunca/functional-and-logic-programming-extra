merge([],[],[]).
merge([],[HBTB],[HBTR])-
    merge([],TB,TR).
merge([HATA],B,[HATR])-
	merge(TA,B,TR),
    !.

rem_occ([],_,[]).
rem_occ([HATA],E,[HATR])-
    not(HA==E),
    !,
    rem_occ(TA,E,TR).
rem_occ([_TA],E,R)-
    rem_occ(TA,E,R).

rem_dup([],[]).
rem_dup([HATA],[HATR])-
    rem_occ(TA,HA,L),
    rem_dup(L,TR).
main(A,B,R)-
    merge(A,B,L),
    rem_dup(L,R).
