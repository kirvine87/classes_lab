class Library

def initialize(book_list)
  @book_list = book_list
end

def get_book()
  return @book_list
end

def return_all_info(student)
  return student
end

def return_rental_info(student)
  return student[:rental_details]
end

end
