class Publication
	attr_accessor :title, :pub_type, :author, :review
	
	def initialize(title, author_title, pubtype)
		@title = title
		@author = author_title
		@pub_type = pubtype
	end
	
end 

class Book < Publication
	attr_accessor :rating
	
end

class Magazine_article < Publication
	attr_accessor :magtitle, :issue, :date, :pagenum
	
end
	
class Internet_article < Publication
	attr_accessor :url

end
		
	
# Initialize objects
my_story = Book.new("Aliens Ate My Pickup", "Mercedes Lackey", "story")
my_story.rating= 10
my_story.review= "hilarious short story about a man, his pickup, and an insurance adjuster"

book2 = Book.new("Touched by an Alien", "Gini Koch", "novel")
book2.rating= 9
book2.review= "humorous science fiction novel about aliens on earth"

mag1 = Magazine_article.new("'Impact of Antarctic Ice Melt on Climate'", "John Q. Public", "article")
mag1.magtitle= "Fictitious Journal of Climate Change"
mag1.date= "Feb 22, 2015"
mag1.review= "study of the impact of the Antarctic glacier melt. Notes that rate is increasing faster than expected"
mag1.issue= "43"

www1 = Internet_article.new("'Study of Mariana Trench'", "Fitzpatrick Eizenstein", "web page")
www1.url= "www.fakeurl.com/art1"
www1.review= "study of impact of climate change on life in the Mariana Trench"

# Display data
puts "\nThe #{my_story.pub_type} #{my_story.title} by author #{my_story.author} gets a #{my_story.rating}-star rating. Review: #{my_story.review}.\n\n"

puts "The #{book2.pub_type} #{book2.title} by author #{book2.author} gets a #{book2.rating}-star rating. Review: #{book2.review}.\n\n"

puts "The #{mag1.pub_type} #{mag1.title} by author #{mag1.author} appears in #{mag1.magtitle}, Issue #{mag1.issue} dated #{mag1.date}.  Review: #{mag1.review}.\n\n"

puts "The #{www1.pub_type} #{www1.title} was found at #{www1.url}. Review: #{www1.review}.\n\n"

