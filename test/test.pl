:- begin_tests(lists).
:- use_module(library(lists)).

test(reverse) :-
        reverse([a,b], [a,a]).

:- end_tests(lists).