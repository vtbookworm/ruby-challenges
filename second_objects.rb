class Publication

	def set_name=(pub_name)
		@name = pub_name
	end
	
	def get_name
		return @name
	end
	
	def set_type=(pub_type)
		@type = pub_type
	end
	
	def get_type
		return @type
	end
	
	def set_author=(pub_author)
		@author = pub_author
	end
	
	def get_author
		return @author
	end
	
	def set_review=(pub_review)
		@review = pub_review
	end
		
	def get_review
		return @review
	end
	
	def set_type=(pub_type)
		@type = pub_type
	end
	
	def get_type
		return @type
	end
end 

class Book < Publication

	def set_numpages=(book_numpages)
		@numpages = book_numpages
	end
	
	def get_numpages 
		return @numpages
	end
	
	def set_rating=(book_rating)
		@rating = book_rating
	end
	
	def get_rating
		return @rating
	end
	
end

class Magazine_article < Publication

	def set_magname=(mag_name)
		@magname = mag_name
	end
	
	def get_magname
		return @magname
	end

	def set_issue=(mag_issue)
		@issue = mag_issue
	end
	
	def get_issue
		return @issue
	end
	
	def set_date=(mag_date)
		@date = mag_date
	end
	
	def get_date
		return @date
	end
	
	def set_pgnum=(mag_pgnum)
		@pgnum = mag_pgnum
	end
	
	def get_pgnum
		return @pgnum
	end
	
end
	
class Internet_article < Publication
	def set_url=(art_url)
		@url = art_url
	end
	
	def get_url
		return @url
	end
end
		
	

my_book = Book.new
my_book.set_name= "Aliens Ate My Pickup"
my_book.set_author="Mercedes Lackey"
my_book.set_type= "short story"
my_book.set_rating= 10
my_book.set_review= "hilarious short story about a man, his pickup, and an insurance adjuster"

book2 = Book.new
book2.set_name= "Touched by an Alien"
book2.set_author= "Gini Koch"
book2.set_type= "novel"
book2.set_rating= 9
book2.set_review= "humorous science fiction novel about aliens on earth"

mag_art1 = Magazine_article.new
mag_art1.set_name= "'Impact of Antarctic Ice Melt on Climate'"
mag_art1.set_magname= "Fictitious Journal of Climate Change"
mag_art1.set_type="magazine article"
mag_art1.set_date= "Feb 22, 2015"
mag_art1.set_author= "John Q. Public"
mag_art1.set_review= "study of the impact of the Antarctic glacier melt. Notes that rate is increasing faster than expected"
mag_art1.set_issue= "43"

www_art1 = Internet_article.new
www_art1.set_name= "'Study of Mariana Trench'"
www_art1.set_author="Fitzpatrick Eizenstein"
www_art1.set_url= "www.fakeurl.com/art1"
www_art1.set_review= "study of impact of climate change on life in the Mariana Trench"


title = book2.get_name
type = book2.get_type
author = book2.get_author
rating = book2.get_rating
review = book2.get_review

puts "The #{type} #{title} by author #{author} gets a #{rating}-star rating. Review: #{review}.\n\n"

title = mag_art1.get_name
type = mag_art1.get_type
author = mag_art1.get_author
magname = mag_art1.get_magname
magissue = mag_art1.get_issue
magdate = mag_art1.get_date
review = mag_art1.get_review

puts "The #{type} #{title} by author #{author} appears in #{magname}, Issue #{magissue} dated #{magdate}.  Review: #{review}.\n\n"

title = www_art1.get_name
author = www_art1.get_author
this_url = www_art1.get_url
review = www_art1.get_review

puts "The article #{title} was found at #{this_url}. Review: #{review}.\n\n"
