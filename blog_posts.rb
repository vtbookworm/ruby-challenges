#
# Simple blog application
#
# This could still use some work.  I'm not sorting by time yet. I haven't done anything with
# a page object, which I assume would limit the number of blog posts that could be seen at
# one time, and then allow the user to move to the next page.  I know I'm storing the time
# twice, once as the key and once in the blog entry itself; I won't take that out until I've
# figured out the sorting method.  The application only allows one paragraph per blog entry.
#
# I don't understand why I have to pass the hash into my blog_enter and blog_view routines.
# Did I miss something special about how to declare global variables in Ruby?  Is there such
# a thing as a global variable?
#
# I may update this later as I have time.  For now, I'm moving on to the next lesson so I 
# won't fall too far behind.
#

class Document
	def set_title(doc_title)
		@title = doc_title
	end
	
	def get_title
		return @title
	end
end

class Blog_entry < Document

	@@num_entries = 0
	
	def self.current_count
		return "There are currently #{@@num_entries} entries in the blog."
	end
	
	def set_id
		@@num_entries += 1
		@id = @@num_entries
		
	end
	
	def get_id
		return @id
	end
	
	def set_author(blog_author)
		@author = blog_author
	end
	
	def get_author
		return @author
	end
	
	def set_datetime(datetime)
		time_val = datetime
		time_val.gmtime
		@datetime = time_val.to_s
		#puts @datetime
	end
	
	def get_datetime
		return @datetime
	end
	
	def set_content(content_str)
		@content = content_str
	end
	
	def get_content
		return @content
	end
	
end	

def blog_enter(b_hash)
	#puts "In blog entry function"
	puts "\nPlease enter a title for your blog post:"
	my_title = gets.chomp.capitalize
	puts "\nPlease enter your name as the author of the post:"
	my_author = gets.chomp
	puts "\nEnter the content for the blog post:"
	my_content = gets.chomp
	if my_content.length > 0
		my_post = Blog_entry.new
		my_post.set_id
		my_post.set_title(my_title)
		my_post.set_author(my_author)
		my_post.set_content(my_content)
		time_val = Time.new
		my_post.set_datetime(time_val)
		b_hash.store(time_val, my_post)
	end
	#puts Blog_entry.current_count
	#puts my_post.inspect
	#b_hash.each{|key, value| print key, "\n", value.inspect}
	return b_hash
	
end

def blog_view(b_hash)
	print "\n"
	puts Blog_entry.current_count
	b_hash.each{|key, value| 
		25.times do |i|
			print "_"
		end
		print "\nOn ", key, " "
		b_entry = value
		print b_entry.get_author, " wrote: \n\n"
		print b_entry.get_title.upcase, "\n\n"
		print b_entry.get_content, "\n\n\n"
	}
end

quit = false
blog_hash = Hash.new
while (! quit)	
	puts "\nWould you like to create a new blog entry (Y/N/Q)?"		
	answer = gets.chomp.downcase
	if (answer == 'y')
		blog_hash = blog_enter(blog_hash)
	elsif (answer == 'n')
		puts "\nWould you like to view the entire blog (Y/N/Q)?"
		answer = gets.chomp.downcase
		if (answer == 'y')
			blog_view(blog_hash)
		elsif (answer == 'q')
			quit = true
		else
			puts "\nThose are the only available actions. Type 'Y' to see them again, or 'N' or 'Q' to quit.(Y/N/Q)?"
			answer = gets.chomp.downcase
			if (answer != "y")
				quit = true
			end
		end
	elsif (answer == 'q')
		quit = true
	end
end
				

	