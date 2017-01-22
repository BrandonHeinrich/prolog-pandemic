:- dynamic infection/2.

adjacent_city(city(san_francisco), city(chicago)).
adjacent_city(city(san_francisco), city(los_angeles)).
adjacent_city(city(san_francisco), city(tokyo)).
adjacent_city(city(san_francisco), city(manila)).

adjacent_city(city(chicago), city(san_francisco)).
adjacent_city(city(chicago), city(montreal)).
adjacent_city(city(chicago), city(atlanta)).
adjacent_city(city(chicago), city(mexico_city)).
adjacent_city(city(chicago), city(los_angeles)).

adjacent_city(city(atlanta), city(chicago)).
adjacent_city(city(atlanta), city(washington)).
adjacent_city(city(atlanta), city(miami)).

adjacent_city(city(montreal), city(chicago)).
adjacent_city(city(montreal), city(washington)).
adjacent_city(city(montreal), city(new_york)).

adjacent_city(city(new_york), city(montreal)).
adjacent_city(city(new_york), city(washington)).
adjacent_city(city(new_york), city(london)).
adjacent_city(city(new_york), city(madrid)).

adjacent_city(city(washington), city(montreal)).
adjacent_city(city(washington), city(new_york)).
adjacent_city(city(washington), city(atlanta)).
adjacent_city(city(washington), city(miami)).

adjacent_city(city(los_angeles), city(chicago)).
adjacent_city(city(los_angeles), city(san_francisco)).
adjacent_city(city(los_angeles), city(mexico_city)).
adjacent_city(city(los_angeles), city(sydney)).

adjacent_city(city(mexico_city), city(los_angeles)).
adjacent_city(city(mexico_city), city(chicago)).
adjacent_city(city(mexico_city), city(miami)).
adjacent_city(city(mexico_city), city(bogota)).
adjacent_city(city(mexico_city), city(lima)).

adjacent_city(city(miami), city(atlanta)).
adjacent_city(city(miami), city(washington)).
adjacent_city(city(miami), city(bogota)).
adjacent_city(city(miami), city(mexico_city)).

all_cities(Out) :- setof(X,Y^adjacent_city(city(X),Y),Out).

do_map_init :- retractall(infection(_, _)), all_cities(Cities), member(X, Cities), asserta(infection(X, 0)), fail.
do_map_init.

:- do_map_init.


do_clear_infection_data:- all_cities(Cities),
                          member(X, Cities),
                          retract(infection(X, _)),
                          asserta(infection(X, 0)).



