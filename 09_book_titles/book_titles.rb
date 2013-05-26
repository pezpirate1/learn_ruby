class Book

def initialize()
	@book
end

def title
	titleize(@title)
end

def title=(title)
	@title = title
end

def titleize(words)
	array=[]
	arrayW = %w(and but if it or over the a an in)
	words.split.each do |word|
	  if arrayW.include? word
		  array << word
	  else
		  array << word.capitalize
	  end
	end
	array[0] = array[0].capitalize
	array.join(' ')
	end
end