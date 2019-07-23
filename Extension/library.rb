class Library

  attr_reader :books

  def initialize(books)
    @books = books
  end

  def get_books()
    return @books
  end

  def get_book_by_title(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  end

  def rental_details_by_title(title)
    book = get_book_by_title(title)
    return book[:rental_details]
  end

  # def add_new_book(title)
  #   book = {
  #     title: title,
  #     rental_details: {
  #       student_name: "",
  #       date: ""
  #     }
  #   }
  #   @books.push(book)
  #
  # end
  #
  # def update_details(name, student_name, date)
  #   book_rental_details = rental_details_by_title(name)
  #   book_rental_details[:student_name] = student_name
  #   book_rental_details[:date] = date
  #
  # end
end
