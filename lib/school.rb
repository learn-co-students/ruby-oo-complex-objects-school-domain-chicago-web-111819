class School
    attr_accessor :name, :roster

def initialize(name)
    @name = name
    @roster = {}
end

def roster
    @roster
end

def add_student(name, grade)

    if roster[grade]
        roster[grade].push(name)
    else
        roster[grade] = []
        roster[grade].push(name)
    end
end

def grade(grade)
   roster.fetch(grade)
end

def sort
    roster.each do | k, v|
        v.sort!
    end
end

end