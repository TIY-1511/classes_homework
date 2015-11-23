
class Item

	attr_accessor :name 
	# attr_reader :name
	# attr_writer :name

	def initialize()
		# @name = name
		# @price = price 
	end

	def display()
		puts "Name #{@name}"
	end

	# def name()
	# 	@name
	# end

	# def name=(new_name)
	# 	@name = new_name
	# end
end

item = Item.new()
# puts item.get_name
item.name = 'Kitten'
puts item.name()
item.name = 'Puppy'
puts item.name

item.display
