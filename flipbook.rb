class Flipbook
  def flip_book(string)
    reverse = []
    string.scan(/\w+/) { |w| reverse.unshift(w) }
    reverse.inspect
  end
end

f = Flipbook.new
# The quick brown fox jumps over the lazy dog
puts f.flip_book("dog lazy the over jumps fox brown quick The")
