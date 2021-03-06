#Chris Billingham
#October 22, 2013

module SimonSays

  #define the echo function
  def echo(x)
    puts x
  end

  def shout(*x)
    if x.size > 0 then
        x.each do |a| 
          print  "#{a.upcase}"
          end
    end
    puts "!\n"
  end

  def repeat(x,y=2)
     while y > 0 
       print  "#{x} "
       y = y-1
     end
     puts "\n"
  end

  def first_word(x)
    x_array = x.split
    puts x_array[0]
  end

  def first_part(x,num)
     puts x[0...num]
  end
end



include SimonSays

  echo "Hello"
  echo "Bye"
  shout "Hello"
  shout "Hello World"
  repeat("Hello")
  repeat("hello", 3)
  first_word "Hello World"
  first_part("Hello", 2)
