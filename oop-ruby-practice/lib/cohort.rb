class Cohort
  attr_reader :title, :start_date, :end_date, :students, :system_checks, :career_kickoff

  def initialize(title, start_date, end_date)
    @title = title
    @start_date = start_date
    @end_date = end_date
    @students = []
    @system_checks = []
    @career_kickoff = @end_date + 4
  end

  def enroll(student)
    @students << student unless @students.include?(student)
  end

  def assign(system_check)
    @system_checks << system_check
  end

  def roster
    roster = "#{@title}"
    @students.each do |student|
      roster += student.name + student.email
    end
    roster
  end

  def system_check_completed?(system_check)
    @students.all? { |student| system_check.did_student_complete_system_check?(student) }
  end
end
