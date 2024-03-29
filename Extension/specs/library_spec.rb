require('minitest/rg')
require('minitest/autorun')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def setup()
    books = [
      {
        title: "lord_of_the_rings",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "to_kill_a_mockingbird",
        rental_details: {
          student_name: "Bill",
          date: "01/09/16"
        }
      },
      {
        title: "of_mice_and_men",
        rental_details: {
          student_name: "Hannah",
          date: "11/03/16"
        }
      }
    ]
    @library = Library.new(books)
  end

  def test_get_books()
    assert_equal(3, @library.get_books().count())
  end

  def test_get_book_by_title()
    assert_equal(@library.books[1], @library.get_book_by_title("to_kill_a_mockingbird"))
  end

  def test_get_rental_details_by_title()
    rental_details = @library.rental_details_by_title('lord_of_the_rings')
    assert_equal(@library.books[0][:rental_details], rental_details)
  end

  # def test_add_new_book
  #   @library.add_new_book ('1984')
  #   assert_equal('1984', @library.books[-1][:title])
  # end
end
