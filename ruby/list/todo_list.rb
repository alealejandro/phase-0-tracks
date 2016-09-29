class TodoList

	def initialize(array=[])
		@list = []
		array.each do |item|
			@list << item
		end
	end

	def get_items
		@list
	end

	def add_item(item)
		@list << item
	end
	
	def delete_item(item)
		@list.delete(item)
		@list
	end

	def get_item(index)
		@list[index]
	end

end