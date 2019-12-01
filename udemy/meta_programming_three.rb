class Author
  def fiction_details(arg)
    puts "Fiction"
    puts arg
    puts "asdfasdf"
  end

  def coding_details(arg)
    puts "Coding"
    puts arg
    puts "asdfasdf"
  end

  def history_details(arg)
    puts "History"
    puts arg
    puts "asdfasdf"
  end
end

author = Author.new
author.coding_details("Cal Newport")

#Using meta-programming
class Writer
  genres = %w(fiction coding history)

  genres.each do |genre|
    define_method("#{genre}_details") do |arg|
      puts "Genre: #{genre}"
      puts arg
      puts arg.object_id
      puts genre.object_id
    end
  end
end

writer = Writer.new
writer.coding_details("DHH")
p writer.respond_to?(:coding_details)
p writer.respond_to?(:history_details)
