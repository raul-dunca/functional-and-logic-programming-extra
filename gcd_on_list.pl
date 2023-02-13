gcd(0,B,B).
gcd(A,0,A).
gcd(A,B,C):-
    A>B,
    A1 is A mod B,
    gcd(A1,B,C),
    !.
gcd(A,B,C):-
    A=<B,
    B1 is B mod A,
    gcd(A,B1,C),
    !.

fct([E],E).
fct([H1,H2|T],R):-
    gcd(H1,H2,G),
    fct([G|T],R),
    !.
