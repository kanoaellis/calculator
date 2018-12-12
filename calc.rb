#! /usr/bin/ruby

def calc
	puts 'Simple Calculator\nEnter help for help\nEnter q to quit'

	while true
		print'>> '
		str = gets.chomp.split(' ')
		return if str[0] == 'q'
		if str[0] == 'help'
			puts 'Only supports one operation at a time:'
			puts 'Addition: +\nSubtraction: -\nMultiplication: *\nDivision: /\nExponentation: **'
		end

		op1 = str[0].to_i
		op2 = str[2].to_i
		operator = str[1].to_sym

		case operator
		when :+ then puts op1 + op2
		when :- then puts op1 - op2
		when :* then puts op1 * op2
		when :/ then puts op1 / op2
		when :** then puts op1 ** op2
		else
			puts 'Invalid input'
		end
	end
end

if __FILE__ == $0
	calc
end
