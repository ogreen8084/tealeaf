class Student
  attr_accessor :name

  initialize(n, g)
    @name = n
    @grade = g
  end



  def better_grade_than?(student)
    grade > student.grade
  end

  protected grade
    @grade
  end
end



joe = Student.new("Joe", 90)
bob = Student.new("Bob", 84)

puts "Well done!" if joe.better_grade_than?(bob)