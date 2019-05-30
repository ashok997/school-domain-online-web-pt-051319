require 'pry'

class School
  #attr_accessor :student_name, :grade
  attr_reader :name, :roster
  
  
  
  def initialize(name) 
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    if roster.has_key?(grade) 
      roster[grade] << student_name
    else
      roster[grade] =[]
      roster[grade] << student_name
    end
  end
  
  def grade(grade)
    roster[grade]
  end
  
  def sort
   roster.each do |grade, names|
      names.sort! 
  end
  end
end