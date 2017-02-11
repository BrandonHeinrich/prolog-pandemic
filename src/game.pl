:- module(game, [game_command/2, games/1]).

:- dynamic cur_id/1.
:- dynamic games/1.
:- dynamic game.

cur_id(0).
games(json{games:[]}).

new_game_template(json{
    id: _,
    epidemics:0,
    infections:0,
    players: [],
    disease: {},
    stations: [atlanta]
}).

game_command(new_game, ID) :- 
    cur_id(ID),
    retract(cur_id(ID)),
    New_ID is ID + 1,
    games(OldGames),
    retract(games(OldGames)),
    GameList = OldGames.games,
    new_game_template(NewGame),
    NewGame.id is New_ID,
    asserta(game(New_ID, NewGame)),
    NewList = [New_ID|GameList],
    asserta(games(json{games:NewList})),
    asserta(cur_id(New_ID)).


