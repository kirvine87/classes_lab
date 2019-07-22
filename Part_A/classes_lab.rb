class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def get_name
    return @name
  end

  def get_cohort
    return @cohort
  end

  def set_name(change_name)
    @name = change_name
  end

  def set_cohort(change_cohort)
    @cohort = change_cohort
  end

  def student_can_talk()
    return "I can talk!"
  end

  def fav_language()
    return "I love Ruby"
  end

end
