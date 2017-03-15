class Cohort
  attr_reader :title, :start_date, :end_date

  def initialize(title, start_date, end_date)
    @title = title
    @start_date = start_date
    @end_date = end_date
  end
end
