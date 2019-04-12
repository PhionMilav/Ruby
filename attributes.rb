
class Characters
attr_accessor :name, :batch_number

def report_data
	puts "#{@name} has the batch number #{@batch_number}."
end
end

#Now, when I want to call on that class, I make a new instance and pass stuff in.

Fin = Characters.new
Fin.name = "Finja Marx"
Fin.batch_number = 83
Fin.report_data