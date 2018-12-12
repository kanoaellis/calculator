#! /usr/bin/ruby

def calc
	puts "Simple Calculator\nEnter q to quit"
	n = 0
	while true
		print'>> '
		str = gets.chomp.split(' ')
		return if str[0] == 'q'

		op1 = str[0].to_i
		op2 = str[2].to_i
		operator = str[1].to_sym

		case operator
		when :+ then puts op1 + op2
		when :- then puts op1 - op2
		when :* then puts op1 * op2
		when :/
			if op2 != 0
				puts op1 / op2
			else
				puts 'Cannot divide by 0'
			end
		when :** then puts op1 ** op2
		else
			puts 'Invalid input'
		end
		n +=1
		puts "Number of runs so far: #{n}"

	end
end

if __FILE__ == $0
	calc
end
