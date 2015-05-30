class Threescale::Metric
 
  def initialize( provider_key, service_id, metric_id )
    @provider_key = provider_key
    @service_id = service_id
    @metric_id = metric_id
  end
  
  def create_method( method_name ) 
    method_name = CGI::escape(method_name)
    command = %[curl  -X POST "#{ENV['THREESCALE_PROVIDER_API_BASE_URL']}/services/#{@service_id}/metrics/#{@metric_id}/methods.xml" -d "provider_key=#{@provider_key}&friendly_name=#{method_name}&system_name=#{method_name}&unit=hits"]
    puts command
    `#{command}`
  end

end

