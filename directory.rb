student_count = 20
# Let's put all students into an array
students = [
{:name => "Daniel Le Dosquet - Bergquist", :cohort => :March},
{:name => "Steve Musgrave", :cohort => :March},
{:name => "Sroop Sunar", :cohort => :March},
{:name => "Colin Marshall", :cohort => :March},
{:name => "Josh Fail-Brown", :cohort => :March},
{:name => "Louise Lai", :cohort => :March},
{:name => "Robin Doble", :cohort => :March},
{:name => "Alex Wong", :cohort => :March},
{:name => "Scott Dimmock", :cohort => :March},
{:name => "Muhanad Al-Rubaiee", :cohort => :March},
{:name => "Shelley Hope", :cohort => :March},
{:name => "Will Hall", :cohort => :March},
{:name => "Oliver Delevingne", :cohort => :March},
{:name => "Nico Saueressig", :cohort => :March},
{:name => "Apostolis", :cohort => :March},
{:name => "Stefania Cardenas", :cohort => :March},
{:name => "Robert Leon", :cohort => :March},
{:name => "Emma Williams", :cohort => :March},
{:name => "Joey Wolf", :cohort => :March},
{:name => "Julie Walker", :cohort => :March},
]

def print_header
	puts "The students of my cohort at Makers Academy"
	puts "------------"
end

def print(students)
	x = 0
	until x == 19
		
		students.each_with_index do |student, index|
			puts " #{x} #{index+1} #{student[:name]} (#{student[:cohort]} cohort)"
			x += 1
		end
		puts x
	end
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit the return twice"
	# create an empty array
	students = []
	# get the first name
	name = gets.chomp
	# while the name is not empty, repaeat this code
	while !name.empty? do
		# add the student hash to the array
		students << {:name => name, :cohort => :March}
		puts "Now we have  #{students.length} students"
		# get anothe name from the user
		name = gets.chomp
	end
	# return the array of students
	students
end


# nothing happens until we call the methods
# students = input_students
print_header
print(students)
print_footer(students)

