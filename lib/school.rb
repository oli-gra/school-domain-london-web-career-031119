# code here!

class School
  
  attr_accessor :student, :grade, :roster
  
  def initialize(name)
    @roster = {}
  end

  
  def add_student(name,grade)
    @name = name
    @grade = grade
    if @roster.key?(grade)
      @roster[grade] << @name
    else
      @roster[grade] = []
      @roster[grade] << @name
    end
  end
  
end