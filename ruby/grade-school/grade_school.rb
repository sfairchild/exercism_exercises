class School < Array

  def students grade
    select { |student| student.grade == grade }.map(&:to_s)
  end

  def students_by_grade
    group_by(&:grade).map do |grade, students|
      { grade: grade, students: students.map(&:to_s) }
    end
  end

  def add student_name, grade
    self << Student.new(student_name, grade)
    sort!
  end

  def <=> other_student
    name <=> other_student.name
  end

  Student = Struct.new(:name, :grade) do
    def <=> other_student
      [grade, name] <=> [other_student.grade, other_student.name]
    end

    def to_s
      name
    end
  end
end

module BookKeeping
  VERSION = 3
end
