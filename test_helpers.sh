#!/bin/bash
case $(uname -s) in
"Linux")
	yesterday() {
		date -d "yesterday"
	}
	last_week() {
		date -d "yesterday - 7 days"
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
