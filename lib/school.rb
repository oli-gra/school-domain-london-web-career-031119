# code here!

class School
  
  attr_accessor :student, :roster
  attr_writer :grade
  
  def initialize(name)
    @roster = {}
  end
  
  def grade(search)
    @roster.select {|grade,students| search == grade}.values
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