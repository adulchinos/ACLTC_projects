class List

		def initialize(name)
			@name = name
			@tasks = []
		end

		def add_task(task)
			@tasks << Task.new(task)
		end

		def name
			return name
		end

		def display_tasks
			@tasks.each do |task|
			puts task.name
			end
		end

		def find_task(words_searched_for) #loop with index
			i = 0 #this whole method might not work if theres nothing in the list
			while i < @tasks.length #WHATS WRONG WITH THIS???
				if @tasks[i] == words_searched_for
					puts @tasks[i]
				end
				i + 1
			end
		end


		# def remove_task(task)
		# 	@tasks.delete(task)
		# end

end

class Task

			def initialize(name)
				@name = name
				@complete = false
			end

			def name
				return @name
			end

end

list = List.new("things to do today")
list.add_task("take out trash")
list.add_task("feed the animal")
list.display_tasks
# list.remove_task("feed the animal")
# list.display_tasks
list.find_task("take out trash")