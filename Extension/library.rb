class Library

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
 
end
