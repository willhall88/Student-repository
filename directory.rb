student_count = 20
# Let's put all students into an array
students = [
{:name => "Daniel Le Dosquet - Bergquist", :cohort => :March, :gender => "male"},
{:name => "Steve Musgrave", :cohort => :March, :gender => "male"},
{:name => "Sroop Sunar", :cohort => :March, :gender => "female"},
{:name => "Colin Marshall", :cohort => :March, :gender => "male"},
{:name => "Josh Fail-Brown", :cohort => :March, :gender => "male"},
{:name => "Louise Lai", :cohort => :March, :gender => "female"},
{:name => "Robin Doble", :cohort => :March, :gender => "male"},
{:name => "Alex Wong", :cohort => :March, :gender => "male"},
{:name => "Scott Dimmock", :cohort => :March, :gender => "male"},
{:name => "Muhanad Al-Rubaiee", :cohort => :March, :gender => "male"},
{:name => "Shelley Hope", :cohort => :March, :gender => "female"},
{:name => "Will Hall", :cohort => :March, :gender => "male"},
{:name => "Oliver Delevingne", :cohort => :March, :gender => "male"},
{:name => "Nico Saueressig", :cohort => :March, :gender => "male"},
{:name => "Apostolis", :cohort => :March, :gender => "male"},
{:name => "Stefania Cardenas", :cohort => :March, :gender => "female"},
{:name => "Robert Leon", :cohort => :March, :gender => "male"},
{:name => "Emma Williams", :cohort => :March, :gender => "female"},
{:name => "Joey Wolf", :cohort => :March, :gender => "male"},
{:name => "Julie Walker", :cohort => :March, :gender => "female"},
]

def print_header
	text = "The students of my cohort at Makers Academy"
	puts text.center(100, " ")
	puts "------------"
end

def printarray(students)
		sort_students = students.sort_by { |student| student[:cohort]}
 		sort_students.each_with_index do |student, index|
 		puts "#{index+1} #{student[:name]},  #{student[:gender]} (#{student[:cohort]} cohort)"
 		end
 end

def get_name(students)
	puts "name please:"
	name = gets.chomp
	while name.empty? do
		puts "now we have #{students.length} great students"
		return name
	end
	name
end

def get_cohort
	puts "cohort please"
	cohort = gets.chomp
	while cohort.empty? do
		puts "Enter the cohort!"
		cohort = gets.chomp
	end
	return cohort
end

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit the return twice"
	# create an empty array
	students = []
	# get the first name
	name = get_name(students)
		while name.empty? do
			return students
		end	
	while !name.empty? do 
		cohort = get_cohort
		students << {name: name, cohort: cohort}
		puts "Now we have #{students.length} students"
		name = get_name(students)
	end
	students
end

def print_footer(names)
	puts "Overall, we have #{names.length} great students"
end


# nothing happens until we call the methods
students = input_students
print_header
printarray(students)
print_footer(students)