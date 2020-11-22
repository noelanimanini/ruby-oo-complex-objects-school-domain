require 'pry'
class School
    attr_reader :name, :roster
    def initialize(roster)
        @roster = {}
    end 

    def roster
        @roster
    end 

    def add_student(name, grade)
        # binding.pry
        # @roster[grade] = [name]
        # @roster[grade] << name
        # if @roster.has_key?(grade)
        #     @roster[grade] << name
        # else
        #     @roster[grade] = [name]
        # end 
        self.roster[grade]||=[]
        self.roster[grade] << name
    end 
#it is implied that we are calling the roster reader method
#on the school instance inside the implicit receiver
    def grade(grade)
        # binding.pry
        @roster[grade]
    end 

    def sort
        # binding.pry
        self.roster.each do |grade, students|
           students.sort!
        end 
    end 
end # code here!