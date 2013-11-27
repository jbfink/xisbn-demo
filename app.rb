require "sinatra"

helpers do
	def xisbn_fetch(xisbn)
	end
end


get '/' do
	haml :"xisbn/index"
end

post '/render' do
	@xisbn = params[:xisbn]
	haml :"xisbn/render"
end
