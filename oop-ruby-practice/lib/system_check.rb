class SystemCheck
  attr_reader :submissions, :average

  def initialize(name, due)
    @submissions = []
    @average = nil
  end

  def add_submission(submission)
    @submissions << submission
  end

  def average_grade
    sum = 0
    @submissions.each do |submission|
      sum += submission.grade
    end
    @average = sum.to_f / @submissions.length
  end

  def did_student_complete_system_check?(student)
    complete = false
    @submissions.each do |submission|
      if submission.student.name == student.name
        return true
      end
    end
    complete
  end
end
