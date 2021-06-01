class Bootcamp
    attr_reader :name , :slogan, :students, :teachers
  def initialize(name,slogan,student_capacity)
        @name= name
        @slogan= slogan
        @student_capacity= student_capacity
        @teachers=[]
        @students=[]
        @grades = Hash.new { |hash,key| hash[key] = []}
  end
    def hire(str)
        @teachers<<str
    end
    def enroll(str)
        if @students.size<@student_capacity
            @students<<str
            return true
        end
        return false
    end
    def enrolled?(str)
        @students.each do |stu|
            return true if str==stu
        end
        return false
    end
    def student_to_teacher_ratio()
    
    end
end
