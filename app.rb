require "sinatra"
require "open-uri"
require "json"


helpers do
	def xisbn_fetch(xisbn)
		item = JSON.load(open("http://xisbn.worldcat.org/webservices/xid/isbn/#{xisbn}?method=getEditions&format=json&fl=form,year,lang,ed"))
		return JSON.pretty_generate(item)
		return "You inputted #{xisbn}! Good for you."
	end
end


get '/' do
	haml :"xisbn/index"
end

post '/render' do
	@xisbn = params[:xisbn]
	haml :"xisbn/render"
end
