class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    #split string into array and iterate over words
    return str.split(' ').map!{ |word|
      if word.length > 4
        marklar = "marklar"
        #Check for capital first letter
        marklar.capitalize! if /\A\p{Lu}/.match(word) 
        #Check for ending punctuation
        marklar += $& if /\p{P}\z/.match(word)
        #replace word with correct form of marklar
        word = marklar
      else
        word
      end              
    }.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    fibonacci = []
    fibonacciEven = 0;
    nth.times do
      #push 1 to sequence array for the first two numbers
      if fibonacci.length == 0 || fibonacci.length == 1
        fibonacci.push(1)
      else
        #Find newest number in array
        lastIndex = fibonacci.length - 1
        #Add two newest numbers
        nextNum = fibonacci[lastIndex] + fibonacci[lastIndex-1]
        #Push sum to sequence array
        fibonacci.push(nextNum)
      end
    end
    fibonacci.each{ |num|
      #Check if num in sequence is even
      if num % 2 == 0
        #Add to total if even
        fibonacciEven += num
      end
    }
    return fibonacciEven
  end

end
