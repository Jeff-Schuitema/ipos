# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

programdirectors = [{:Name => 'Dr. A', :CWID => '256456'},
    	{:Name => 'Dr. B', :CWID => '251256'},
    	]
programdirectors.each do |programdirector|
  Programdirector.create!(programdirector)
end 

professors = [{:Name => 'Dr. Rob Stark', :CWID => '156456', :programdirector_id => '1'},
    	{:Name => 'Dr. Tyrion Lannister', :CWID => '151256', :programdirector_id => '1'},
    	{:Name => 'Dr. Sandor Clegane', :CWID => '151256', :programdirector_id => '1'},
    	{:Name => 'Dr. Bronn', :CWID => '152346', :programdirector_id => '1'}
    	]
professors.each do |professor|
  Professor.create!(professor)
end 

students = [{:Name => 'John Smith', :CWID => '456456', :Concentration => 'CSCI', :Advisor => 'Dr. Rob Stark', :professor_id => '1'},
    	{:Name => 'Joe Jones', :CWID => '451256', :Concentration => 'CSCI', :Advisor => 'Dr. Rob Stark', :professor_id => '1'},
    	{:Name => 'Sansa Stark', :CWID => '451256', :Concentration => 'CSCI', :Advisor => 'Dr. Rob Stark', :professor_id => '1'},
    	{:Name => 'Jon Snow', :CWID => '452346', :Concentration => 'CSCI', :Advisor => 'Dr. Tyrion Lannister', :professor_id => '2'},
    	{:Name => 'Ramsey Bolton', :CWID => '451286', :Concentration => 'CSCI', :Advisor => 'Dr. Tyrion Lannister', :professor_id => '2'},
    	{:Name => 'Oberyn Martell', :CWID => '754256', :Concentration => 'MATH', :Advisor => 'Dr. Sandor Clegane', :professor_id => '2'},
    	{:Name => 'Hodor Hodor', :CWID => '451235', :Concentration => 'MATH', :Advisor => 'Dr. Sandor Clegane', :professor_id => '3'},
	    {:Name => 'Gregor Clegane', :CWID => '499956', :Concentration => 'MATH', :Advisor => 'Dr. Bronn', :professor_id => '3'}
    	]
students.each do |student|
  Student.create!(student)
end 

plans = [{:nameofplan => 'Mynewplan1', :student_id => '1'},
    	{:nameofplan => 'JSmith plan 1', :student_id => '2'},
    	{:nameofplan => 'Stick to the plan', :student_id => '3'},
    	{:nameofplan => 'I like this plan', :student_id => '4'},
    	{:nameofplan => 'I dislike this plan', :student_id => '5'},
    	{:nameofplan => '12 courses in one semester plan', :student_id => '6'},
    	{:nameofplan => 'graduate in 10 years plan', :student_id => '7'},
	    {:nameofplan => 'planplanplanofstudy', :student_id => '8'}
    	]
plans.each do |plan|
  Plan.create!(plan)
end 

semesters = [{:season => 'Spring', :year => '2021', :course1 => 'CSCI 100', :course2 => 'CSCI 200', :course3 => 'CSCI 300', :course4 => 'CSCI 400'},
        {:season => 'Summer', :year => '2021', :course1 => 'CSCI 111', :course2 => 'CSCI 299', :course3 => 'CSCI 310', :course4 => 'CSCI 430'}
    	]
semesters.each do |semester|
  Semester.create!(semester)
end 


courses = [{:prefix => 'CSCI', :name => 'Easy Course', :number => '100', :section => '01'},
    	 {:prefix => 'CSCI', :name => 'Hard Course', :number => '200', :section => '01'},
    	 {:prefix => 'CSCI', :name => 'Medium Course', :number => '300', :section => '01'},
    	 {:prefix => 'CSCI', :name => 'Very Hard Course', :number => '400', :section => '01'},
       {:prefix => 'CSCI', :name => 'Java', :number => '111', :section => '01'},
    	 {:prefix => 'CSCI', :name => 'C++', :number => '299', :section => '01'},
    	 {:prefix => 'CSCI', :name => 'Python', :number => '310', :section => '04'},
    	 {:prefix => 'CSCI', :name => 'Stress Management When Programming', :number => '430', :section => '01'}
    	 ]
courses.each do |course|
  Course.create!(course)
end 