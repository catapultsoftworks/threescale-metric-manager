class Threescale::Api

	def initialize( options = {} )
		options = Hash( options )
		@provider_key = options.fetch(:provider_key) 
		@base_url = options.fetch(:base_url) 
	end

	def get( path, options = {})
	  response = Net::HTTP.get_response(uri(path, options))
      JSON.parse(response.body)
    end

  private
    def uri( path, options={})
    	options = Hash(options)
    	URI.parse( "#{@base_url}/#{path}?provider_key=#{@provider_key}&#{options.to_query}" )
    end

end
