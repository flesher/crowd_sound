
class ApiController < ApplicationController

	respond_to :json
	def home
		message = ["You're at the root of the API, nothing to see here"]
		
		respond_with message
	end	

	def getToken
		json_string = RDIO_OBJ.call("getPlaybackToken", {"domain" => "localhost"})
		respond_with json_string
		
	end

	def findArtist
		query = params[:query]
		types = "Artist"

		search_string = RDIO_OBJ.call("search",{"query"=>query,"types"=>types})
		
		respond_with json_string
	end

end
