class Deity

	attr_reader :name, :places, :animals, :aegis

	def initialize(hash)
			@name = hash["name"]
			@places = hash["places"]
			@animals = hash["animals"]
			@aegis = hash["aegis"]
	end

	def name
		return @name
	end

	def self.find(id)
		deity_hash = Unirest.get("#{ENV['API_BASE_URL']}/deities/#{id}.json").body
		@deity = Deity.new(deity_hash)
	end

	def self.all
		deities_hash = Unirest.get("#{ENV['API_BASE_URL']}/deities.json").body["deities"]
		@deities = []
		deities_hash.each do |deity_hash|
			@deities << Deity.new(deity_hash)
		end

		@deities
	end



end