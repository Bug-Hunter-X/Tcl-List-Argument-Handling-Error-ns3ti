proc badproc {a b} { puts "a is $a, b is $b"; return [expr {$a + $b}] } 
 puts [badproc 1 2]  ;#This works fine. 3 is printed
 puts [badproc 1 {2 3}] ;# This will give an error.