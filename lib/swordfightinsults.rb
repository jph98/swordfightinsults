#!/usr/bin/env ruby

class SwordFightInsults

	def read_random_message()
		lines = IO.readlines("messages.txt")				
		random_line = Random.new().rand(1...lines.size())		
		return lines[random_line]
	end

	def split_insult_comeback(msg)
		matches = msg.match(/Insult:(.*)Comeback:(.*)/)
		puts "\nGuybrush: #{matches[1]}"
		puts "Pirate Master: #{matches[2]}\n"
	end

	def output()
		msg = read_random_message()
		puts split_insult_comeback(msg)
	end	
end

if __FILE__ == $0
	motd = SwordFightInsults.new()
	motd.output()
end