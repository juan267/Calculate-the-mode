[Week 4 Home](../)

# Die Class 1: Numeric

## Learning Competencies
- Break a large problem down into smaller steps
- Implement a method or class based on pseudocode
- Research and use Ruby methods
- Define a ruby class and describe why you would use one
- Identify the scope of different variables

## Summary
In past challenge, you saw your first Class (in that case the Array class). In this challenge you'll want to implement a basic `Die` class which can be initialized with some number of sides.  We can then roll the die, returning a random number. It should work like this:

```ruby
die = Die.new(6) #This creates a new die object with 6 sides
die.sides # returns 6
die.roll # returns a random number between 1 and 6
```

If we pass `Die.new` a number less than `1`, we should raise an `ArgumentError`.  This is done using the `raise` keyword.  See the [ArgumentError documentation](http://apidock.com/ruby/ArgumentError) for how to do this.

Use the [Ruby Docs](http://www.ruby-doc.org/) to see how to return a random number.

Before starting this challenge, you will want to read a bit about classes and ruby objects. Try one or two of these:
- [Writing our own Class in Ruby](http://rubylearning.com/satishtalim/writing_our_own_class_in_ruby.html)
- [Ruby Classes and Objects](http://www.tutorialspoint.com/ruby/ruby_classes.htm)
- [The Well-Grounded Rubyist (Book)](http://www.manning.com/black2/)

