:- consult(map).

:- dynamic infection_counter/1.
:- dynamic epedemic_counter/1.

infection_counter(0).
epedemic_counter(0).

infect(X) :- infection(X, Count), New is Count + 1,
             retract(infection(X, Count)),
             asserta(infection(X, New)).