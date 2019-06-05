class User < ApplicationRecord

	def writeprogram_sort_array(given_array= []	)
        result_array = []
		given_array = [1,2,4,10,5,100, 70]

		given_array.each_with_index do |ele, index|
			result_array << (given_array[index] <  given_array[index+1]) ?  given_array[index] : given_array[index+1]
		end

		result_array
	end


    def reverse_consecutive_chars(str)
	 	input_arr = str.chars
	 	new_str = ""
	 	input_arr.each_with_index do |element, index|
	   		next if index.even?
	    	new_str += "#{input_arr[index]}#{input_arr[index-1]}"
	 	end
	 	new_str += input_arr.last if input_arr.length.odd?
	  	new_str
    end

    define_method ("active_user?") do ||
      self.active?
    end

end


class Customer
     CUSTOMER_CREATED = 1
	@@no_of_customers = 0

	def initialize (name, age)
      @name = name
      @age = age
      @@no_of_customers += 1
	end

	def get_count

      @@no_of_customers
	end


	def test_combine_comparation_operator
		#Combined comparison operator. Returns 0 if first operand equals second, 
		#1 if first operand is greater than the second 
		# -1 if first operand is less than the second.
		a = 10
		b = 20
		puts a <=> b
	end

end

class A
	@@class_var = "manju"
	@insta_var = "reddy"
end
A.class_variable_get(:@@class_var) # manju
A.instance_variable_get(:@insta_var) # reddy


#custom exceptions

class MyError < StandardError
  attr_reader :thing
  def initialize(msg="My default message", thing="apple")
    @thing = thing
    super(msg)
  end
end

begin
  raise MyError.new("my message", "my thing")
rescue => e
  puts e.thing # "my thing"
end