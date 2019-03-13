# code here!
require'pry'

class School
  
  attr_accessor :student, :roster
  attr_writer :grade
  
  def initialize(name)
    @roster = {}
  end
  
  def grade(search)
    @roster.select {|grade,students| search == grade}.values.flatten
  end
  
  def sort
    new_hash = {}
    counter = 0
    binding.pry
    @roster.sort_by do |grade, students|
        grade
    end
    while counter < @roster.max_by{|grade,students| grade}
      counter += 1 
      new_hash = @roster.find {}
    binding.pry
    puts"yeh"
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