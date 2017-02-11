:- use_module(library(http/thread_httpd)).
:- use_module(library(http/http_dispatch)).
:- use_module(library(http/http_parameters)).
:- use_module(library(http/json)).

:- http_handler(root(.), http_redirect(moved, root(lobby)), []).
:- http_handler(root(games), handle_games, []).

:- use_module(game).

server_port(8080). % Port required to run properly in Cloud 9
        
start_server :- server_port(Port), 
                http_server(http_dispatch, [port(Port)]).

handle_games(Request) :-
        member(method(get), Request),
        format('Content-type: text/plain~n~n'),
        games(Games),
        json_write(current_output, Games),
        format('~n').
        
        
handle_games(Request) :-
        member(method(post), Request),
        game_command(new_game, ID),
        format('Content-type: application/json~n~n'),
        format('{id:~a}', [ID]).
        
        