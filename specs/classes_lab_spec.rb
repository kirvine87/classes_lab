require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_lab.rb')

class StudentTest < MiniTest::Test

def setup()
  @person = Student.new("Kyle", "G14")
end

def test_get_name()
  assert_equal("Kyle", @person.get_name())
end

def test_get_cohort()
  assert_equal("G14", @person.get_cohort())
end

def test_set_name()
  @person.set_name("John")
  assert_equal("John", @person.get_name())
end

def test_set_cohort()
  @person.set_cohort("G12")
  assert_equal("G12", @person.get_cohort())
end

end
