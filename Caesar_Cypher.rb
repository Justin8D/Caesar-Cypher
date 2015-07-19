@alpha = ("a".."z").to_a.join
shift = 1
x = shift % 26
@encode = @alpha[x..-1] + @alpha[0..x]
		

def encrypt (string)
	string.downcase.tr(@alpha, @encode)
end

def decrypt (string)
	string.downcase.tr(@encode, @alpha)
end

puts %q{

	****  Welcome to the Caesar Cypher Encoder/Decoder!  ****

The Caesar Cypher encodes a message by shifting each letter of the message by a certain amount.

Would you like to encode or decode a message?}

selection = gets.chomp.downcase

puts "Great! And by how much should each letter shift?"
@shift = gets.chomp.to_i

if selection == "encode"
	puts "Enter your message:"
	string = gets.chomp.to_s
	puts "Here's your encoded message: " + encrypt(string)

elsif selection == "decode"
	puts "Enter your message:"
	string = gets.chomp.to_s
	puts "Here's your decoded message: " + decrypt(string)
else 
	puts "I didn't quite get that. Let's try to run the program again."
end
	
