require 'pry'

class School
  #attr_accessor :student_name, :grade
  attr_reader :name, :roster
  
  
  
  def initialize(name) 
    @name = name
    @roster = {}
  end
  
  def add_student(student_name, grade)
    (roster.has_key?(grade)? roster[grade] << student_name 
      : roster[grade]=[] 
        roster[grade] << student_name )

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