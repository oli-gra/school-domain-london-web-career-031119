# code here!

class School
  
  attr_accessor :student, :grade
  
  @roster = {}
  @roster[grade] = []
  
  def add_student(name,grade)
    @name = name
    @grade = grade
    @roster[grade] << @name
  end
  
end