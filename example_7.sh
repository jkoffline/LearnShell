#!/usr/bin/expect --
#
# 21 June, 2017
# Karl.Lv@outlook.com

#open a file
set fd [open "./example_7.sh" r]
set number 0

# read each line
while { [gets $fd line] >= 0 } { incr number }
puts "Number of lines: $number"

close $fd
