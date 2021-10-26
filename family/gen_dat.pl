% Genealogical database.

male(tom).
male(chris).
male(ben).
male(arthur).
male(john).
male(randy).
male(greg).
male(lyle).
male(robert).

female(polly).
female(sally).
female(patty).
female(wendy).
female(mary).

parent(arthur, chris).
parent(polly, tom).
parent(polly, ben).
parent(greg, polly).
parent(patty, polly).
parent(greg, sally).
parent(patty, sally).
parent(greg, john).
parent(patty, john).
parent(greg, randy).
parent(patty, randy).
parent(wendy, patty).
parent(lyle, patty).
parent(mary, greg).
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

grandfather(GF, C) :-
    parent(P, C),
    parent(GF, P),
    male(GF).

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

sibling(X, Y) :-
    parent(P, X),
    parent(P, Y),
    X \= Y.

% TODO: This is buggy.
brother(X, Y) :-
    parent(P, X),
    parent(P, Y),
    male(X),
    X \= Y.

sister(X, Y) :-
    parent(P, X),
    parent(P, Y),
    female(X),
    X \= Y.

% TODO: This needs to be fixed.
brothers(X, Y) :-
    brother(X, Y),
    brother(Y, X).
    %% parent(P, X),
    %% parent(P, Y),
    %% male(X),
    %% male(Y),
    %% X \= Y.

sisterst(X, Y) :-
    parent(P, X),
    parent(P, Y),
    female(X),
    female(Y),
    X \= Y.

aunt(A, N) :-
    parent(P, N),
    sibling(A, P),
    female(A).

uncle(U, N) :-
    parent(P, N),
    sibling(U, P),
    male(U).

cousin(C, X) :-
    parent(P, X),
    sibling(S, P),
    parent(S, C).
