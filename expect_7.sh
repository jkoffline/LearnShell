#!/usr/bin/expect --
#

#open a file
set fd [open "./myshell.sh" r]
set number 0

# read each line
while { [gets $fd line] >= 0 } { incr number }
puts "Number of lines: $number"

close $fd
