% Genealogical database.

male(tom).
male(chris).
male(ben).
male(arthur).
male(greg).

female(polly).
female(patty).

parent(arthur, chris).
parent(polly, tom).
parent(polly, ben).
parent(greg, polly).
parent(patty, polly).

mother(M, C) :-
    parent(M, C),
    female(M).

father(F, C) :-
    parent(F, C),
    male(F).
