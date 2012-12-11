#
# Fact (piece of knowledge) representation.
# It holds time when it was observed (added to facts database) and expire time in seconds.
#
class Fact
	def initialize(data, time, options)
		@data = data
    @time = time
    @options = options
		@is_deleted = false
  end

	attr_reader :data
	attr_accessor :is_deleted

	def timed_out?
		return false if @options[:expires] == nil
		@time + @options[:expires] < Time.now
	end
end

#
# Adapter for facts database.
#
class FactsDatabase
	def initialize
		@storage = []
	end

	def add(fact, options = {})
		@storage << Fact.new(fact, Time.now, options)
	end

	def remove(fact)
		@storage.delete_if {|f| f.data == fact}
	end

	def enumerate
		@storage
	end
end
