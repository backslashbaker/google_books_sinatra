class Book
  def initialize(google_book)
    @google_book = google_book
  end

  def title
    volume_info['title']
  end

  def authors
	  volume_info['authors'].join(', ')
  end

  def publisher
    volume_info['publisher']
	end
	
	private

	def volume_info
		@google_book['volumeInfo']
	end

end