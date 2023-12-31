# Problem Solving Process
# Restate the goal. 
# Consider the data.
# Ask clarifying questions.
# Break it down.
# Research.
# Start coding. 
# Stuck? Go back to your pseudocode.
# Refactor.

# Challenge 1
# Write a method or function that accepts a string. The method or function should return a boolean that describes whether or not the string has an even number of characters.
def string_even_length?(str)
    str.length % 2 == 0
end

p string_even_length?("Michael")
p string_even_length?("Alison")


# Challenge 2
# Start with an array of strings. Then, print only the words with more than 3 characters.
words = %w[cat dog mouse bird lizard]

words.each do |word|
    if word.length > 3
        p word 
    end 
end 

# Challenge 3
# Write a method or function that takes an array of numbers as an argument.  The method or function should return the average of all the numbers, rounded to two decimal places.
def average_array(numbers)
    if numbers.empty?
        return 0.00
    else
        sum = 0
        numbers.each do |num|
            sum += num
        end

        average = sum / numbers.length 

        rounded_avg = average.round(2)

        return rounded_avg
    end
end 

num_array = [12.5, 8, 3.7, 16.89, 20, 30]
result = average_array(num_array)
p result

# Challenge 4
# Start with an array of strings. Print all of the words in the array, that include the letter t or T.
strings_array = %w[michael ali tim Tom rich Rachel]
strings_array.each do |x|
    if x.include?("t") || x.include?("T")
        p x
    end 
end 

# Challenge 5
# Write a method or function that accepts an array of 10 integers (between 0 and 9) and returns a string of those numbers in the form of a phone number. For example, if you were given [5, 5, 5, 1, 2, 3, 4, 5, 6, 7], 
# the method or function will return 555-123-4567.

def phone_number_format(numbers)
    if numbers.length == 10 && numbers.all? { |num| num.between?(0,9) }
        area_code = numbers[0..2].join('')        
        first_three = numbers[3..5].join('')
        line_number = numbers[6..9].join('')

        return "#{area_code}-#{first_three}-#{line_number}"
    else 
        return "Please enter your full number, including the area code"
    end     
end

phone_num = [5,0,5,9,0,3,9,6,8,9]
formatted_number = phone_number_format(phone_num)
p formatted_number