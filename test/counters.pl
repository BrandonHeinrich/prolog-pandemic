:- absolute_file_name("./src/game.pl", File), consult(File).

:- begin_tests(outbreak_counter).

test(outbreak_counter) :-
        new_game(X, players(2)),
        outbreak_counter(X, 0).
        
test(outbreak_counter) :-
        new_game(X, players(3)),
        outbreak_counter(X, 0).
        
test(outbreak_counter) :-
        new_game(X, players(4)),
        outbreak_counter(X, 0).
        
:- end_tests(outbreak_counter).       
:- begin_tests(epidemic_counter).

test(epidemic_counter) :-
        new_game(X, players(2)),
        epidemic_counter(X, 0).

test(epidemic_counter) :-
        new_game(X, players(3)),
        epidemic_counter(X, 0).

test(epidemic_counter) :-
        new_game(X, players(4)),
        epidemic_counter(X, 0).

:- end_tests(epidemic_counter).