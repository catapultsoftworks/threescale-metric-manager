module Threescale
    class Metric
     
    def initialize( provider_key, service_id, metric_id )
      @provider_key = provider_key
      @service_id = service_id
      @metric_id = metric_id
    end
    
    def create_method( method_name ) 
      method_name = CGI::escape(method_name)
      command = %[curl  -X POST "https://notredame-admin.3scale.net/admin/api/services/#{@service_id}/metrics/#{@metric_id}/methods.xml" -d "provider_key=#{@provider_key}&friendly_name=#{method_name}&system_name=#{method_name}&unit=hits"]
      puts command
      `#{command}`
    end
    
    end
end
