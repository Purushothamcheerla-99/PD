if 0 {
####################Arithematic opertion############
		
set var1 10
set var2 25
puts "var1 = $var1"
puts "var2 = $var2"

puts {Arthimetic Operations}

set result1 [expr {$var1 + $var2}]
set result2 [expr {$var1 - $var2}]
set result3 [expr {$var1 * $var2}]
set result4 [expr {$var1 / $var2}]
set result5 [expr {$var1 % $var2}]


puts "The Addition of two variables = $result1"
puts "The Subtraction of two variabes = $result2"
puts "The Multiplication of two variabes = $result3"
puts "The Division of two variabes = $result4"
puts "The remainder of two variabes = $result5"



##########Print Statements####################	

set var "Purushotham";
puts "welcome to the World $var";
set var1 {This is TCl};
set var2 {u can do scripting  using me};
puts $var1;
puts $var2;





###############if condition###########

set x 1
if {$x == 2} {puts "x is 2"} else {puts "x is not 2"}




###############loops###################
##############While loop###############

set x 0
while {$x < 100} {
puts "x is $x"
set x [expr $x + 2]
}



############For loops#################


for {puts "Start"; set i 1} { $i < 4} {incr i; puts "i after incr: $i";} {
	puts "i inside the first loop: $i"

}



#############Arrays###################

set institute(0) vlsi
set institute(1) Academy
set institute(2) Puncham
set institute(3) banglore
set institute(4) india
set institute(5) Purushotham
 

#########iterating over array###########



for {set index 0} {$index < [array size institute]} {incr index} {
	puts "institute($index) : $institute($index)"
}



############Associative Arrrays############

set Employee1(name) Purushotham
set Employee1(emplid) 2490128
set Employee1(age) 24
set Employee2(name) Nithin
set Employee2(emplid) 2490127
set Employee2(age) 25

puts [array get Employee1]
puts [array get Employee2]


########For each loop######### 

foreach index [array names institute] {
	puts "institute($index) : $institute($index)"
}       



set array1(0) a
set array1(1) b 
set array1(2) c
set array1(3) d
set array1(4) e
#####to find elements##########
set element_to_find e

foreach number [array names array1] {
	if {$array1($number) == $element_to_find} {
		puts "found: $array1($number)"
	}
}

###########to find name###########
set students(jacob) 27
set students(ryan) 24
set students(callie) 25
set students(john) 28
set students(yang) 30

set name_to_find john

foreach name [array names students] {
       if {$name == $name_to_find} {
       puts "Name : $name "
       puts "Age : $students($name)" 
}
}

#######Data_Structures#################

############List#################


set lst {{oranges} {apples} {bananas} {grapes}}

puts "yellow colour fruit in the list {$lst} is : [lindex $lst 2] \n"
puts  [lindex $lst 0] 

set x "a b c"
puts "item at index 2 of the list {$x} is : [lindex $x 2] \n"

set y [split 7/4/1999 "/"]
puts "we celebrate on the [lindex $y 1]th day of the [lindex $y 0]th month"


set i 0
foreach j $lst {
puts "$j is the item number $i in the list"
incr i
}


###########String_operations############

##########string_comapre########

puts [string compare "golden" "golden"]
puts [string compare "bulb" "light"]

##########string_index##########

puts [string index "purushotham" 5]

############string_length####### 

puts [string length "purushotham"]

############string_range###########

puts [string range "i am studying physical design" 2 12]

#####string_tolower n toupper######

puts [string tolower "VLSI DESIGN"]
puts [string toupper "purushotham"]

###########String trim##############


set s1 "VLSI Academy india pvt ltd"
set s2 "VLSI"
puts "Trim left: \"$s2\" in \"$s1\""
puts "new string: \"[string trimleft $s1 $s2]\""

set s1 "VLSI Academy india pvt ltd"
set s2 "pvt ltd"
puts "Trim left: \"$s2\" in \"$s1\""
puts "new string: \"[string trimright $s1 $s2]\""


set s1 "::::VLSI Academy india pvt ltd:::::::"
set s2 ":"
puts "Trim on both sides: \"$s2\" in \"$s1\""
puts "new string: \"[string trim $s1 $s2]\""

#############Match pattern String############

set s1 "test-id@goldenlightVLSI.com"
set s2 "*@*.com"
puts "Matching pattern $s2 in $s2" 
if {[ string match "*@*.com" $s1 ]} {
	puts "match found" } else { puts "match not found" }

puts "Matching pattern \"tcl\" in $s1"
if { [ string match {tcl} $s1]} {
	puts "match found" } else { puts "match not found" }



#############string_append################

set s1 "we love to study tcl "
append s1 "in VLSI academy"
puts $s1



############concat#################

set emp_name1 "john"
set emp_name2 "Tina"
set emp_name3 "purushotham"
set emp_name4 "ryan"
set empl_list [concat $emp_name1 $emp_name2 $emp_name3 $emp_name4 ]
puts $empl_list

##########linsert###########

set names "jacob ryan john marshal"
set new_names [linsert $names 2 "purushotham"]
puts "old list : $names"
puts "new list : $new_names"

##########lreplace###############

set names "jacob ryan john marshal"
set new_names [lreplace $names 2 2 "purushotham"]
puts "old list : $names"
puts "new list : $new_names"

############lappend#################

set employee_list "jacob john ryan appu"
puts "old_database : $employee_list"
lappend employee_list  "purushotham"
puts "updated_database : $employee_list"

############llength###############

puts "size of the employee list : [llength $employee_list]"

###########lsort########################

set sorted_list [lsort -increasing $employee_list]
puts "old_list : $employee_list"
puts "sorted_list : $sorted_list"

###############lrange##############

puts [lrange $employee_list 1 2]


#############File_handling############

set fp [open "File.tcl" r+]
set file_data [read $fp]
puts $file_data
close $fp


set fp [open "File.tcl" r]
while { [gets $fp data] > 0 } {
	puts $data 
}
close $fp

set fp [open "File.txt" w+]
puts $fp "test"
close $fp

###########proc###########


proc sum {a b} {
 return [expr $a*$b ]
 }
 
puts [sum 10 30]


proc employee_modifier {emp_id} {
	return [ join [ list "1" $emp_id] ""]
}
puts [employee_modifier 7829]



proc employee_modifier {emp_id {code 000} } {
	return [ join [ list $code $emp_id] ""]
}
puts [employee_modifier 7829]
}



set employee [list "raju" "purushotham" "john" "ryan"]
proc email {employee_names} {
	set empID {}
	foreach name $employee_names {
		set ID [join [list $name "@gmail.com"] ""]
		lappend empID $ID
	}
	return $empID
}
puts [email $employee]
}



