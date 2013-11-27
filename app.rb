require "sinatra"

helpers do
	def xisbn_fetch(xisbn)
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
