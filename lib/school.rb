class School

    attr_accessor :name, :roster

    def initialize(sch_name)
        @name = sch_name
        @roster = {}
    end

    def add_student(student_name, grade)
        @roster[grade] = [] if !@roster.keys.include?(grade)
        @roster[grade] << student_name
    end

    def grade(given_grade)
        @roster[given_grade]
    end

    def sort
        @roster.each { |g, s| @roster[g] = s.sort }
        return @roster
    end

end