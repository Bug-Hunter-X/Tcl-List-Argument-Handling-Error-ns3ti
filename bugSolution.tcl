proc goodproc {a b} { 
     if {[llength $b] > 1} { 
         puts "Warning: b is a list, only using the first element." 
         set b [lindex $b 0] 
     }
     puts "a is $a, b is $b"
     return [expr {$a + $b}]
 }
 puts [goodproc 1 2] ;# This works fine. 3 is printed
 puts [goodproc 1 {2 3}] ;# This now works correctly, treating {2 3} as a single argument.