require 'pry'

class School

    attr_accessor :roster
    attr_reader :name

    def initialize(name, roster = {})
        @name = name
        @roster = roster
    end

    def add_student(name, grade)
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
        end
    end

    def grade(num)
        return @roster[num]
    end

    def sort
        @roster.each do |grade, students|
            students.sort!
        end
    end
end