class Threescale::Models::Service

	attr_reader :name

	def initialize( json_object )
		@name = json_object["name"]
	end



end