#!/bin/bash

source parse_args

foo() {
	# printf -- "%q\n" "$@"
    parse_args alpha beta -- "$@" || exit $?
	printf -- "%s\n" "$alpha"
	printf -- "%s\n" "$beta"
}


printf "\n>>> Test One (should pass)\n"
foo apple banana

printf "\n>>> Test Two (should pass)\n"
foo -e "one 'two three'"

printf "\n>>> Test Three (should fail)\n"
$(foo -e "one 'two three'" four ) || true

printf "\n>>> Test Four (should fail)\n"
$(foo) || true
