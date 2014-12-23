require '../Bank'
require '../Banks'

class DataReader
	def ReadLine()
		@allBanks = Banks.new
		File.open('../truncated_list.txt', 'r') do |f|
			f.each_line do |line|
			  #print line[1,9] + "\r\n" + "Line Number: #{index}\r\n\r\n"
			  @mybank = Bank.new
			  @mybank.routing_number = line[0,9]
			  @mybank.parentBank = line[10,9]
			  @mybank.record_type = line[19,16]
			  @mybank.name = line[35,36]
			  @mybank.street = line[71,36]
			  @mybank.city = line[107,20]
			  @mybank.state = line[127,2]
			  @mybank.zip = line[129,9]
			  @mybank.phone = line[138,10]
			  #@mybank.print_bank()
			  #puts @mybank.to_json
			  print @mybank.print_AsJson() + "\r\n\r\n\r\n"

			  @allBanks.add(@mybank)
			end
		end
		#convert to json
	end
end

#EASTERN BANK                        #36 characters