class Student
  attr_accessor :last_name, :email, :username, :email, :password
  #attr_reader :password

  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @password = password
  end

  # def first_name=(name)
  #   @first_name = name
  # end

  # def first_name
  #   @first_name
  # end

  def to_s
    "#{@first_name} #{@last_name}"
  end

end

student = Student.new("Mateusz", "Kamilowski", "Am123","example@gmail.com", "pass123")
another_student = Student.new("Kamil", "Mateuszowski", "Kam99","smart_guy@gmail.com", "pass123")
# student.first_name = "Mateusz"
# student.last_name = "Kamilowski"
another_student.last_name = student.last_name
puts student
puts another_student