student_count = 20
# Let's put all students into an array
students = [
"Daniel Le Dosquet - Bergquist",
"Steve Musgrave",
"Sroop Sunar",
"Colin Marshall",
"Josh Fail-Brown",
"Louise Lai",
"Robin Doble",
"Alex Wong",
"Scott Dimmock",
"Muhanad Al-Rubaiee",
"Shelley Hope",
"Will Hall",
"Oliver Delevingne",
"Nico Saueressig",
"Apostolis",
"Stefania Cardenas",
"Robert Leon",
"Emma Williams",
"Joey Wolf",
"Julie Walker",
]
#no were going to print them
puts "The students of my cohort at Makers Academy"
puts "------------"
students.each do |student|
	puts student
end

# finally we print the total
puts "Overall, we have #{students.length} great students"

