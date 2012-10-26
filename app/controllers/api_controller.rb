
class ApiController < ApplicationController

	respond_to :json
	def home
		message = ["You're at the root of the API, nothing to see here"]
		
		respond_with message
	end	

	def getToken
		#rdio = Rdio.init("x8zxcv2b35bhmm4yj86xa3u6","Ey83GMjKBY")
		json_string = RDIO_OBJ.call("getPlaybackToken", {"domain" => "localhost"})
		

		respond_with json_string
		
		#respond_to do |format|
		#	format.json{render :json=>json_string}
	#	end

	end

	def findArtist
		query = params[:query]
		types = "Artist"

		search_string = RDIO_OBJ.call("search",{"query"=>query,"types"=>types})
		
		respond_with json_string
	end

end
