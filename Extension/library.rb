class Library

  def initialize(books)
    @books = books
  end

  # def gets_book()
  #   return @books
  # end

  def book_by_title(title)
    for book in @books
      if book[:title] == title
        return book
      end
    end
  end
end
