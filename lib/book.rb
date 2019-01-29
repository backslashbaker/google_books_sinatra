class Book
  def initialize(google_book)
    @google_book = google_book
  end

  def title
	  @google_book['volumeInfo']['title']
  end

 	def authors
	  @google_book['volumeInfo']['authors'].join(', ')
  end

  def publisher
    @google_book['volumeInfo']['publisher']
  end

end