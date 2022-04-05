class Bootcamp
  def initialize(name, slogan, numOfStudents)
    @name = name
    @slogan = slogan
    @student_capacity = numOfStudents
    @teachers = []
    @students = []
    @grades = Hash.new { |h, k| h[k] = [] }
  end

  def name
    return @name
  end
  def slogan
    return @slogan
  end
  def teachers
    return @teachers
  end
  def students
    return @students
  end
  def hire(str)
    @teachers.push(str)
  end
  def enroll(str)
    return false if @students.length==@student_capacity
    @students.push(str)
    return true
  end
  def enrolled?(str)
    return @students.include?(str)
  end

  # part 2

  def student_to_teacher_ratio
    return (@students.length/@teachers.length)
  end

  def add_grade(str,score)
    return false if !@students.include?(str)
    @grades[str].push(score)
    return true
  end

  def num_grades(str)
    return @grades[str].length
  end
  def average_grade(str)
    return nil if !@students.include?(str)
    return nil if @grades[str].empty?
    temp=@grades[str]
    return (temp.sum/temp.length)
  end

end


