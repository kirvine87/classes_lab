require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class LibraryTest < Minitest::Test

  def setup

    @books = [
      {
        title: "lord_of_the_rings",
        author: "J. R. R. Tolkien",
        rental_details: {
          student_name: "Jeff",
          date: "01/12/16"
        }
      },
      {
        title: "lord_of_the_flies",
        author: "William Golding",
        rental_details: {
          student_name: "Samantha",
          date: "06/10/01"
        }
      },
      {
        title: "harry_potter",
        author: "J. K. Rowling",
        rental_details: {
          student_name: "Hannah",
          date: "22/11/12"
        }
      }
    ]
  end

end
