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
end
