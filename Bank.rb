require 'json'

class Bank
	attr_accessor :name
	attr_accessor :routing_number
	attr_accessor :record_type
	attr_accessor :street
	attr_accessor :city
	attr_accessor :state
	attr_accessor :zip
	attr_accessor :phone
	attr_accessor :parentBank

	def print_bank()
		#print street.to_s + "\r\n"
		print "Routing#: #{routing_number}\r\n" + "RecordType: #{record_type}\r\n" + "Bank: #{name}\r\n" +  "Street: #{street}\r\n" + "City: #{city}\r\n" + "State: #{state}\r\n" + "Zip: #{zip}\r\n" + "Phone: #{phone}\r\n" + "ParentBank: #{parentBank}\r\n"
		# + "City: #{city}\r\n"
		# + "State: #{state}\r\n"
		# + "Zip: #{zip}\r\n"
		# + "Phone: #{phone}\r\n"
		# + "\r\n"
	end

	def print_AsJson()
		{'name' => @name.strip, 'RoutingNumber' => @routing_number, 'RecordType' => @record_type, 'Phone Number' => @phone, 'Street' => @street.strip, 'City' => @city.strip, 'State' => @state, 'Zip' => @zip}.to_json
	end
end