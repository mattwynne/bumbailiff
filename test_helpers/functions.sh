#!/bin/bash
set_git_date() {
	export GIT_AUTHOR_DATE="$1"
	export GIT_COMMITTER_DATE="$1"
}

case $(uname -s) in
"Linux")
	yesterday() {
		date -d "yesterday"
	}
	last_week() {
		date -d "today - 7 days"
	}
	;;
"Darwin")
	yesterday() {
		date -v -24H
	}
	last_week() {
		date -v -7d
	}
	;;
esac
