:- absolute_file_name("./src/game.pl", File), consult(File).

:- begin_tests(new_game).

% Creating a new game should list the id in the games list
test(new_game) :-
    game_command(new_game, ID),
    games(Games),
    member(ID, Games).

% a new game should have the correct id




:- end_tests(new_game)