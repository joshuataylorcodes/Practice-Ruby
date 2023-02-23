students = []
puts "How many students are in your group?"
student_number = gets.chomp().to_i
student_number.times do
  puts "Enter the students name"
  name = gets.chomp()
  students << name
end

students = students.shuffle
if student_number.even?
  index = 0
  while index < students.length
    group = {}
    group[:student_1] = students[index]
    group[:student_2] = students[index + 1]
    puts "Group: #{group[:student_1]} , #{group[:student_2]}"
    index += 2
  end
else
  index = 0
  group_number = (student_number - 1) / 2
  group_number = group_number - 1
  group_number.times do
    group = {}
    group[:student_1] = students[index]
    group[:student_2] = students[index + 1]

    puts "Group: #{group[:student_1]} , #{group[:student_2]}"
    index += 2
  end

  puts "Group: #{students[-3]} , #{students[-2]} , #{students[-1]}"
end
