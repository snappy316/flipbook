# Flipbook

This program takes a string as an input, and outputs the words in reverse order.

## Usage

Initialize a new instance of the Flipbook class. Pass in a string to the `flip_book`, which will output the words in reverse order.

Example:

```ruby
f = Flipbook.new
puts f.flip_book("dog lazy the over jumps fox brown quick The")
#=> The quick brown fox jumps over the lazy dog
```

## Approach

Instead of using the `split` method to split the string into an array, I used `scan` to separate the string into an array, based on the regular expression pattern of a word. But instead of looping through the newly-created array, I had `scan` pass each word into a block that I unshifted onto the beginning of the `reverse` array, thus reversing the order of the words as it is splitting them up. Since `reverse` is still an array, and we want to return a string, I ran `join` on the `reverse` array to convert it and add spaces between words.

## References
[Ruby Docs - String#scan](http://ruby-doc.org/core-2.2.0/String.html#method-i-scan)
[Ruby Docs - Array#join](http://ruby-doc.org/core-2.2.0/Array.html#method-i-join)
