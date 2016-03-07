#write a function that takes the encrypted message (just one word) and returns the unencrypted message

def cipher(message, shiftvalue)  #function that takes 2 parameters
	newarray=[] #declaring empty array to shovel into
	message_array=message.downcase.split(//) #take message "string" and split it into an array

	message_array.each do |i|  #creating function to loop through message_array
			
			if i.ord == 32  #if i.ord is as space (ord 32) then just pass a space no need to calc anything
				newarray << " "

			elsif i.ord < 97
				adjustedvalue = i.ord + 26
				deciphered=adjustedvalue + shiftvalue  #grab the ordinance of each message array item->you cant ord an array<- 
				newarray << deciphered.chr

			elsif i.ord > 122 
				adjustedvalue = i.ord - 26
				deciphered=adjustedvalue + shiftvalue  #grab the ordinance of each message array item->you cant ord an array<- 
				newarray << deciphered.chr

			else
			deciphered=i.ord + shiftvalue  #grab the ordinance of each message array item->you cant ord an array<- 
			newarray << deciphered.chr

			end

	end	
	
print newarray.join('') #convert an array to a string using .join 
	
end

# need to account for uppercase letters by downcasing everything maybe to get the right ord position in the alphabet??
cipher("iFmmp ifmmp", -1)
