class Threescale::Manager

	attr_reader :api

	def initialize( options = {} )
		options = Hash( options )
		provider_key = options.fetch(:provider_key) { ENV['THREESCALE_PROVIDER_KEY'] }
		base_url = options.fetch(:base_url) { ENV['THREESCALE_PROVIDER_API_BASE_URL'] }

		@api = Threescale::Api.new({ base_url: base_url, provider_key: provider_key })
	end

	def services
		@services ||= Threescale::ServiceList.new( @api )
		@services.all
	end
end
