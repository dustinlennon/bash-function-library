#!/bin/bash

source process_args

foo() {
    process_args alpha beta -- "$@" || exit $?
	printf -- "%s\n" "$alpha"
	printf -- "%s\n" "$beta"
	if [ "${#args[@]}" -gt 0 ]; then
		printf -- "args: %s\n" "${args[@]}"
	fi
}


printf "\n[Simple Args]\n"
foo apple banana

printf "\n[Difficult Args]\n"
foo -e "one 'two three'"

printf "\n[Extra Args]\n"
foo -e "one 'two three'" extra stuff || true

printf "\n>>>[Too Few Args]\n"
foo || true
