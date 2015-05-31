class Threescale::ServiceList

	def initialize( api )
		@api = api
	end

	def all
	  uri = "services.json"
	  parsed_response(@api.get(uri))
	end

  private
	def parsed_response( json )
	  json["services"].map do |service| 
	  	Threescale::Models::Service.new(service["service"])
	  end
	end

end