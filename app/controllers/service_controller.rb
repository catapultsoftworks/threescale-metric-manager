class ServiceController < ApplicationController

	def index
		@services = api_manager.services
	end

  private
    def api_manager
    	@@mgr ||= Threescale::Manager.new
    end

end
