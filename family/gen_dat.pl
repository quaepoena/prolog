% Genealogical database.

male(tom).
male(chris).
male(ben).
male(arthur).
male(greg).
male(lyle).
male(robert).

female(polly).
female(patty).
female(wendy).
female(mary).

parent(arthur, chris).
parent(polly, tom).
parent(polly, ben).
parent(greg, polly).
parent(patty, polly).
parent(wendy, patty).
parent(lyle, patty).
parent(mary, grep).
parent(robert, greg).

daughter(D, P) :-
    parent(P, D),
    female(D).

son(S, P) :-
    parent(P, S),
    male(S).

child(C, P) :-
    parent(P, C).

mother(M, C) :-
    parent(M, C),
    female(M).

father(F, C) :-
    parent(F, C),
    male(F).

grandmother(GM, C) :-
    parent(P, C),
    parent(GM, P),
    female(GM).

grandfather(GF, C).
    parent(P, C),
    parent(GF, P),
    male(GF).

great_grandmother(GGM, C) :-
    parent(P, C),
    parent(GP, P),
    parent(GGM, GP),
    female(GGM).

great_grandmother(GGM, C) :-
    parent(P, C),
    parent(GP, P),
    parent(GGM, GP),
    female(GGM).

great_grandfather(GGF, C) :-
    parent(P, C),
    parent(GP, P),
    parent(GGF, GP),
    male(GGF).
