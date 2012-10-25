
class ApiController < ApplicationController

	def home
		@message = ["You're at the root of the API, nothing to see here"]
		respond_to do |format|
			format.json{render :json=>@message}
		end
	end	

	def getToken
		#todo - movie Rdio init to initializers?
		rdio = Rdio.init("x8zxcv2b35bhmm4yj86xa3u6","Ey83GMjKBY")
		json_string = rdio.call("getPlaybackToken", {"domain" => "localhost"})

		@decoded = ActiveSupport::JSON.decode(json_string)
		
		@status = @decoded["status"]
		@key = @decoded["result"]

	end

end
