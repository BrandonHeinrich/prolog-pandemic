service_root := http://prolog-pandemic-brandonheinrich.c9users.io:8080

tests:
	prolog -f test/test_root.pl -t run_tests. -g true
	
get_games:
	curl -X GET $(service_root)/games
	
post_game:
	curl -X POST $(service_root)/games
	
get_game:
	curl -X GET $(service_root)/games/game$(ARG)