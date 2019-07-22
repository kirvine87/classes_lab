require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

def setup()
  @library = Library.new([@student = {
    title: "lord_of_the_rings",
    rental_details: {
     student_name: "Jeff",
     date: "01/12/16"
    }
  },
  @student_2 = {
    title: "lord_of_the_flies",
    rental_details: {
     student_name: "Sandra",
     date: "22/09/01"
    }
  },
  @student_3 = {
    title: "harry_potter",
    rental_details: {
     student_name: "Bob",
     date: "06/06/17"
    }
  }])
end

def test_get_book()
  assert_equal(3, @library.get_book().count())
end

def test_return_all_info()
  assert_equal(@student, @library.return_all_info(@student))
end

def test_return_rental_info()
  assert_equal(@student[:rental_details], @library.return_rental_info(@student))
end

end
