class School
    attr_accessor :name, :roster

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name, grade)
        if roster[grade]
            roster[grade] << name
        else
            arr = Array.new
            roster.store(grade, arr.push(name))
        end
    end

    def grade(grade)
        return roster[grade]
    end

    def sort
        roster.each do |grade, student_list|
            roster[grade] = student_list.sort
        end
    end
end