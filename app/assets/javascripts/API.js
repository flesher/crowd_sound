(function(){
	/**
		Font-end Access to the API
	*/

	var API = function(){

		this.search = "/api/search";
		this.findArtist = "/api/findArtist";
		this.getToken = "/api/getToken";

	};

	/**
		Makes request to API
	*/
	API.prototype.sendRequest = function(path,callback){

		switch(path){
			case "search":
				path = this.search;
			break;

			case "findArtist":
				path = this.findArtist;
			break;

			case "getToken":
				path = this.getToken;
			break;
		}

		var request = new XMLHttpRequest();
		request.open("POST",path,false);

		request.send();


		if(request.status === 200){
			callback(request.responseText);
		}

	};

	window.API = API;

})(window)