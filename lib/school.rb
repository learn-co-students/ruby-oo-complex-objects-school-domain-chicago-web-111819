require 'pry'
class School
    attr_accessor :roster

    def initialize(roster = [])
        @roster = {}
    end

    def add_student(student, grade)
        if @roster[grade].kind_of?(Array)
            @roster[grade] << student 
        else @roster[grade] = [student]
        end
    end

    def grade(grade)
        array = @roster[grade]
    end
    
    def sort
        i = 0
        
        while i < @roster.length do
            array_keys = @roster.keys
            @roster[array_keys[i]] = @roster[array_keys[i]].sort
            i += 1
        end
        return @roster
        # @roster = @roster.map {|key, value| [key, [value.sort]] }
        # @roster = @roster.to_h
    end
end

